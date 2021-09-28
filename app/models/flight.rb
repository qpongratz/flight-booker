class Flight < ApplicationRecord
  belongs_to :origin, class_name: 'Airport'
  belongs_to :destination, class_name: 'Airport'

  def departure_date_formatted
    self.departure_time.strftime("%m/%d/%Y")
  end
end
