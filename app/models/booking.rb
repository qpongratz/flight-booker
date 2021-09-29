class Booking < ApplicationRecord
  belongs_to :flight, inverse_of: :bookings
  has_many :passengers
end
