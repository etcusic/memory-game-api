class CreateConnectFourLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :connect_four_logs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :deck, null: false, foreign_key: true
      t.integer :time
      t.integer :outcome

      t.timestamps
    end
  end
end
