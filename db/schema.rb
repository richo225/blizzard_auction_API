ActiveRecord::Schema.define(version: 20170317223748) do

  create_table "cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "artist"
    t.integer  "attack"
    t.string   "card_class"
    t.string   "classes"
    t.boolean  "collectible"
    t.integer  "cost"
    t.integer  "dbf_id"
    t.integer  "durability"
    t.boolean  "elite"
    t.text     "entourage",          limit: 65535
    t.text     "flavour",            limit: 65535
    t.integer  "health"
    t.text     "how_to_earn",        limit: 65535
    t.string   "how_to_earn_golden"
    t.string   "card_id"
    t.string   "mechanics"
    t.string   "multi_class_group"
    t.string   "name"
    t.string   "play_requirements"
    t.string   "player_class"
    t.string   "rarity"
    t.string   "set"
    t.text     "text",               limit: 65535
    t.string   "card_type"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

end
