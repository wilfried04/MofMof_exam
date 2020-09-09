class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :name
      t.string :minute
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
