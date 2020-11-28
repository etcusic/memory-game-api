class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :side_a
      t.string :side_b
      t.belongs_to :set, null: false, foreign_key: true

      t.timestamps
    end
  end
end
