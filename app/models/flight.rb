class Flight < ApplicationRecord
  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'

  scope :path, ->(origin, destination) { where(origin_id: origin, destination_id: destination)}

  def departure_date_formatted
    departure_time.strftime('%Y-%m-%d')
  end
end
