class Flight < ApplicationRecord
  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'
  has_many :bookings, inverse_of: :flight
  # potentially has_many :passengers through bookings

  accepts_nested_attributes_for :bookings

  scope :path, ->(origin, destination) { where(origin_id: origin, destination_id: destination)}

  def departure_date_formatted
    departure_time.strftime('%Y-%m-%d')
  end
end
