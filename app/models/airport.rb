class Airport < ApplicationRecord
  validates :code, uniqueness: true, presence: true
  validates :name, presence: true

  has_many :arriving_flights, class_name: 'Flight', foreign_key: :destination_id
  has_many :departing_flights, class_name: 'Flight', foreign_key: :origin_id
end
