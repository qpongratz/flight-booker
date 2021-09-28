class DropCityColumnFromAirport < ActiveRecord::Migration[6.1]
  def change
    remove_column :airports, :city
  end
end
