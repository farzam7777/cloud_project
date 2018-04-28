class Booking < ApplicationRecord
	belongs_to :user
	belongs_to :room

	validates :check_in, presence: true
	# validates :check_out, presence: true, date: { after_or_equal_to:  :check_in}
	validates :guests, presence: true

	def guests_limit(capacity, guests)
		if capacity < guests.to_i
			self.errors.add(:guests, "Guests Limit exceeded.")
			return false
		else
			true
		end
	end

	def self.validate_booking?(given_check_in, given_check_out)
		booking = Booking.arel_table
  	where(booking[:check_in].lteq(given_check_out).and(booking[:check_out].gteq(given_check_in))).count > 0 ? false : true
  end
end
