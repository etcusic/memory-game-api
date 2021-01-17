class ReplaceOutcomeWithResult < ActiveRecord::Migration[6.0]
  def change
    change_table :connect_four_logs do |t|
      t.change :outcome, :string
    end
  end
end
