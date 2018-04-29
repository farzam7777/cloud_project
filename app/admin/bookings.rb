ActiveAdmin.register Booking do
	permit_params :room_id, :user_id, :check_in, :check_out, :guests

	form multipart: true do |f|
	  f.inputs "Booking Details" do
	  	f.input :room
	  	f.input :user
	  	f.input :check_in
	  	f.input :check_out
	  	f.input :guests
	  end
	  f.button :Submit
	end
end
