class CardsController < ApplicationController
  before_action :set_card, only: :show

  def index
    @cards = Card.all
    json_response(@cards)
  end

  def show
    json_response(@card)
  end

  private

  def set_card
    @card = Card.find(card_params[:id])
  end

  def card_params
    params.permit(
      :id,
      :artist,
      :attack,
      :card_class,
      :classes,
      :collectible,
      :cost,
      :dbf_id,
      :durability,
      :elite,
      :entourage,
      :flavour,
      :health,
      :how_to_earn,
      :how_to_earn_golden,
      :card_id,
      :mechanics,
      :multi_class_group,
      :name,
      :play_requirements,
      :player_class,
      :rarity,
      :set,
      :text,
      :card_type,
      :created_at,
      :updated_at
    )
  end
end
