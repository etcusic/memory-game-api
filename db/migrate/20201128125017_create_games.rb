class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.belongs_to :deck, null: false, foreign_key: true
      t.string :player_name
      t.integer :score
      t.integer :time_limit

      t.timestamps
    end
  end
end
