class BookingsController < ApplicationController
  def new
    @booking = Booking.new(booking_params)
    @passengers = []
    @booking.number_of_passengers.times do
      @passengers << @booking.passengers.build
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :number_of_passengers)
  end
end