class CreateRounds < ActiveRecord::Migration[7.1]
  def change
    create_table :rounds do |t|
      t.references :tournament, null: false, foreign_key: true
      t.references :winner, null: false, foreign_key: { to_table: :players }
      t.timestamps
    end
  end
end
