class CreateRoomRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :room_ratings do |t|
      t.string :rating
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
