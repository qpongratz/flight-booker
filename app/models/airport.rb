class Airport < ApplicationRecord
  validates :code, unique: true, presence: true
  validates :name, presence: true

  has_many :arriving_flights, foreign_key: :destination_id
  has_many :departing_flights, foreign_key: :origin_id
end
