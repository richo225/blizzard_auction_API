class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :artist
      t.integer :attack
      t.string :card_class
      t.string :classes
      t.boolean :collectible
      t.integer :cost
      t.integer :dbf_id
      t.integer :durability
      t.boolean :elite
      t.string :entourage
      t.text :flavour
      t.integer :health
      t.text :how_to_earn
      t.string :how_to_earn_golden
      t.string :card_id
      t.string :mechanics
      t.string :multiClassGroup
      t.string :name
      t.string :play_requirements
      t.string :player_class
      t.string :rarity
      t.string :set
      t.text :text
      t.string :type

      t.timestamps
    end
  end
end
