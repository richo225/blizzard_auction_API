class Card < ApplicationRecord
  validates_presence_of :name,
                        :card_class,
                        :player_class,
                        :card_type,
                        :set,
                        :dbf_id,
                        :card_id
end
