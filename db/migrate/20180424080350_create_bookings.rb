class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :room_id
      t.integer :user_id
      t.integer :guests
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
