class CreateRounds < ActiveRecord::Migration[7.1]
  def change
    create_table :rounds do |t|
      t.references :tournament, null: false, foreign_key: true
      t.references :winner, foreign_key: { to_table: :contestants }
      t.timestamps
    end
  end
end
