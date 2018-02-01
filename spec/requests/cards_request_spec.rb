require 'rails_helper'

RSpec.describe 'Cards', type: :request do
  let!(:cards) { create_list(:card, 10) }

  describe 'GET /cards' do
    before { get '/cards' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns all cards' do
      expect(json_response).not_to be_empty
      expect(json_response.size).to eq(10)
    end
  end

  describe 'GET /cards/:id' do
    let(:card_id) { cards.sample.id }

    before { get "/cards/#{card_id}" }

    context 'when the card exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the specific card' do
        expect(json_response).not_to be_empty
        expect(json_response['id']).to eq(card_id)
      end
    end

    context 'when the card doesn\'t exist' do
      let(:card_id) { rand(11..50) }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(json_response['message']).to include("Couldn't find Card with 'id'=#{card_id}")
      end
    end
  end
end
