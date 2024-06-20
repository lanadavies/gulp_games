class CreateContestants < ActiveRecord::Migration[7.1]
  def change
    create_table :contestants do |t|
      t.string :name
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
