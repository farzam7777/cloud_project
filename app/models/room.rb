class Room < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  has_many :room_images, dependent: :destroy
  has_many :room_ratings, dependent: :destroy

  accepts_nested_attributes_for :room_images, allow_destroy: true

  def internet?
  	internet == 1 ? true : false
  end

  def balcony?
  	balcony == 1 ? true : false
  end

  def beach_view?
  	beach_view == 1 ? true : false
  end

  def breakfast?
  	breakfast == 1 ? true : false
  end

  def tv?
  	tv == 1 ? true : false
  end

  def self.top_rooms
  	as_array = Room.find_by_sql "SELECT rooms.id, count(rooms.id) as bookings_count FROM rooms LEFT OUTER JOIN bookings on rooms.id = bookings.room_id 
  	GROUP by rooms.id ORDER by bookings_count desc LIMIT 3"

  	s_relation = Room.where(id: as_array.map(&:id))

  	s_relation
  end

end
