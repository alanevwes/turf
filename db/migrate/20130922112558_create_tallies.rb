class CreateTallies < ActiveRecord::Migration
  def change
    create_table :tallies do |t|
      t.integer :amount, :default => 0
      t.integer :user_id

      t.timestamps
    end
    add_index :tallies, [:user_id, :created_at]
  end
end
