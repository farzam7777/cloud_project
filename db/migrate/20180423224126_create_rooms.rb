class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :beds
      t.integer :capacity
      t.text :description
      t.attachment :image
      t.integer :price

      t.timestamps
    end
  end
end
