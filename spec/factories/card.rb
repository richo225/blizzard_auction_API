FactoryBot.define do
  factory :card do
    name 'Big Boy'
    card_class 'HUNTER'
    player_class 'HUNTER'
    card_type 'MINION'
    set 'NAXX'
    dbf_id 123
    card_id 'abc123'
  end
end
