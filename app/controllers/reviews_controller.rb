class ReviewsController < ApplicationController
	def create
		@room = Room.find(params[:room_id])
		@review = Review.new(content: params[:review][:content], user: current_user, room: @room)
		if @review.save
			redirect_to room_path(@room) + '#reviews', notice: 'Review is Successfully Submitted.'
		else
			redirect_to room_path(@room), alert: 'Some Problem occured'
		end
	end

	def review_params
  	params.require(:review).permit!
  end
end
