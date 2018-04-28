class Room < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
end
