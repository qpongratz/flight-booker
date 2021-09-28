class Airport < ApplicationRecord
  validates :code, unique: true, presence: true
  validates :name, presence: true
end
