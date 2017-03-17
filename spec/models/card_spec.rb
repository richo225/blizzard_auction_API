require 'rails_helper'

RSpec.describe Card, type: :model do
  let(:card) { build :card }

  it 'has a valid factory' do
    expect(card).to be_valid
  end

  describe 'name' do
    it 'validates presence' do
      card.name = nil
      expect(card).to be_invalid
    end
  end

  describe 'card class' do
    it 'validates presence' do
      card.card_class = nil
      expect(card).to be_invalid
    end
  end

  describe 'player class' do
    it 'validates presence' do
      card.player_class = nil
      expect(card).to be_invalid
    end
  end

  describe 'card type' do
    it 'validates presence' do
      card.card_type = nil
      expect(card).to be_invalid
    end
  end

  describe 'set' do
    it 'validates presence' do
      card.set = nil
      expect(card).to be_invalid
    end
  end

  describe 'dbf id' do
    it 'validates presence' do
      card.dbf_id = nil
      expect(card).to be_invalid
    end
  end

  describe 'card id' do
    it 'validates presence' do
      card.card_id = nil
      expect(card).to be_invalid
    end
  end
end
