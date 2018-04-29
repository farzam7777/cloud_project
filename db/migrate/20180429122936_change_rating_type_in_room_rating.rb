class ChangeRatingTypeInRoomRating < ActiveRecord::Migration[5.1]
  def change
  	change_column :room_ratings, :rating, 'integer USING CAST(rating AS integer)'
  end
end
