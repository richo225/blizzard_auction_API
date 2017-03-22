require 'rails_helper'

RSpec.describe "Cards", type: :request do

  let!(:cards) { create_list(:card, 10) }
  let(:card_id) { cards.sample.id }

  describe "GET /cards" do
    before { get '/cards' }

    it "returns cards" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /cards/:id" do
    before { get "/cards/#{card_id}" }

    context "when the card exists" do
      it "returns the specific card" do
        expect(json).not_to be_empty
        expect(json["id"]).to eq(card_id)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the card doesn't exist" do
      let(:card_id) { rand(11..50) }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        expect(response.body).to include("Couldn't find Card with 'id'=#{card_id}")
      end
    end
  end
end
