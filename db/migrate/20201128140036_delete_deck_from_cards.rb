class DeleteDeckFromCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :deck_id
    add_column :cards, :deck, :belongs_to
  end
end
