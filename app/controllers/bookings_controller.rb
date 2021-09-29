class BookingsController < ApplicationController
  def new
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :number_of_passengers)
  end
end