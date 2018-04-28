class CreateRoomImages < ActiveRecord::Migration[5.1]
  def change
    create_table :room_images do |t|
      t.attachment :image
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
