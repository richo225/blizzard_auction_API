class ChangeColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :cards, :type, :card_type
    rename_column :cards, :multiClassGroup, :multi_class_group
  end
end
