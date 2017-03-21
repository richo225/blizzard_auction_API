all_cards = JSON.parse(File.read("#{Rails.root}/db/data/all_cards.json"))

puts "Seeding all cards........"

all_cards.each do |a|
  c = Card.new
  c.artist = a["artist"]
  c.attack = a["attack"]
  c.card_class = a["cardClass"]
  c.classes = a["classes"]
  c.collectible = a["collectible"]
  c.cost = a["cost"]
  c.dbf_id = a["dbfId"]
  c.durability = a["durability"]
  c.elite = a["elite"]
  c.entourage = a["entourage"]
  c.flavour = a["flavour"]
  c.health = a["health"]
  c.how_to_earn = a["howToEarn"]
  c.how_to_earn_golden = a["howToEarnGolden"]
  c.card_id = a["cardId"]
  c.mechanics = a["mechanics"]
  c.multi_class_group = a["multiClassGroup"]
  c.name = a["name"]
  c.play_requirements = a["playRequirements"]
  c.player_class = a["playerClass"]
  c.rarity = a["rarity"]
  c.set = a["set"]
  c.text = a["text"]
  c.card_type = a["type"]
  c.save
end
