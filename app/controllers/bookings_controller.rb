class BookingsController < ApplicationController
  def new
    @booking = Booking.new(booking_params)
    booking_params[:number_of_passengers].to_i.times do
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @passengers = @booking.passengers.all
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    :number_of_passengers,
                                    passengers_attributes: %i[name email booking_id id])
  end
end