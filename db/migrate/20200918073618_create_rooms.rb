class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :rent
      t.string :address
      t.string :age
      t.text :content

      t.timestamps
    end
  end
end
