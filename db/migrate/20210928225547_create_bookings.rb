class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight
      t.integer :number_of_passengers

      t.timestamps
    end
  end
end
