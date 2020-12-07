class CreateGameLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :game_logs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :deck, null: false, foreign_key: true
      t.integer :score
      t.integer :level

      t.timestamps
    end
  end
end
