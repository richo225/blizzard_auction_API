class CardsController < ApplicationController

  def index
    @cards = Card.all
    render json: @cards
  end

  private

  def card_params
    params.require(:cards).permit(
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
