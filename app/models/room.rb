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
end
