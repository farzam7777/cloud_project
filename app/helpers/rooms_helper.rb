module RoomsHelper
	def create_booking(given_check_in, given_check_out, guests, room)
		if room.bookings.validate_booking?(given_check_in, given_check_out)
	  	@booking = Booking.new(user: current_user, room: room, check_in: given_check_in, check_out: given_check_out, guests: guests)
			if @booking.guests_limit(room.capacity, guests)	  	
		  	if @booking.save
		  		redirect_to room, notice: 'Room has been successfully Booked for you.'
		  	else
		  		redirect_to room, alert: 'Some problem occured while Booking, Try Again!'
		  	end
		  else
		  	redirect_to room, alert: "Guests Limit exceeded, This room capacity is #{room.capacity}"
		  end
		else
			redirect_to room, alert: 'This Room is already booked in these dates, Try booking with other dates.'
		end
	end
end
