class PagesController < ApplicationController
  def index
  	@rooms = Room.top_rooms
  end
end
