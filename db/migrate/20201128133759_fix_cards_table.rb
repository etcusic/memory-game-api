class FixCardsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :set_id
    add_column :cards, :deck_id, :integer
  end
end
