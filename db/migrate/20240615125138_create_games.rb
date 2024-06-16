class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :name
      t.references :tournament, null: false, foreign_key: true
      t.boolean :two_player

      t.timestamps
    end
  end
end
