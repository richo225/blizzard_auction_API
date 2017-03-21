require 'rails_helper'

RSpec.describe "Cards", type: :request do

  let!(:cards) { create_list(:card, 10) }

  describe "GET /cards" do
    before { get cards_path }
    it "returns cards" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end
end
