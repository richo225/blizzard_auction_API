class Card < ApplicationRecord
  validates :name, presence: true
  validates :card_class, presence: true
  validates :player_class, presence: true
  validates :card_type, presence: true
  validates :set, presence: true
  validates :dbf_id, presence: true
  validates :card_id, presence: true
end
