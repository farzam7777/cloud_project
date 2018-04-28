class RoomsController < ApplicationController
	include RoomsHelper
	
  def index
  	@rooms = Room.all
  end

  def show
  	@room = Room.find(params[:id])
  	@reviews = @room.reviews
    @images = @room.room_images
  end

  def book_room
  	@room = Room.find(params[:id])
  	if user_signed_in?
	  	given_check_in = params[:booking][:check_in]
	  	given_check_out = params[:booking][:check_out]
	  	guests = params[:booking][:guests]

	  	create_booking(given_check_in, given_check_out, guests, @room)
	  else
	  	redirect_to @room, alert: 'You must Sign In to Book Room.'
	  end
  end
end
