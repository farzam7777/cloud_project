class RoomsController < ApplicationController
	include RoomsHelper
	
  def index
    @rooms = Kaminari.paginate_array(Room.all).page(params[:page]).per(3)
    respond_to do |format|
      format.html {  }
      format.js
    end
  end

  def show
  	@room = Room.find(params[:id])
  	@reviews = @room.reviews
    @images = @room.room_images
    @avg_rating = @room.room_ratings.average(:rating).to_i
  end

  def book_room
  	@room = Room.find(params[:id])
    @avg_rating = @room.room_ratings.average(:rating).to_i
  	if user_signed_in?
	  	given_check_in = params[:booking][:check_in]
	  	given_check_out = params[:booking][:check_out]
	  	guests = params[:booking][:guests]

	  	create_booking(given_check_in, given_check_out, guests, @room)
	  else
	  	redirect_to @room, alert: 'You must Sign In to Book Room.'
	  end
  end

  def rating
    @room = Room.find(params[:id])
    @rating = RoomRating.create(rating: params[:star], room: @room)
    if @rating.save
      @avg_rating = @room.room_ratings.average(:rating).to_i
      redirect_to @room, notice: 'Rating is successfully made.'
    else
      redirect_to @room, alert: 'Some Problem Occured, Try Again!'
    end
  end
end
