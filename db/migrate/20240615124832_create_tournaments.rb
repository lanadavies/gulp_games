class CreateTournaments < ActiveRecord::Migration[7.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :code, null: false
      t.index :code, unique: true
      t.references :user, null: false, foreign_key: true
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
