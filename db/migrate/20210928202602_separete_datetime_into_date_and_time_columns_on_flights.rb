class SepareteDatetimeIntoDateAndTimeColumnsOnFlights < ActiveRecord::Migration[6.1]
  def up
    remove_column :flights, :departure_time
    add_column :flights, :departure_time, :time
    add_column :flights, :departure_date, :date
  end
  def down
    remove_column :flights, :departure_time
    remove_column :flights, :departure_date
    add_column :flights, :departure_time, :datetime
  end
end
