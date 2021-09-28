class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @flights = Flight.all
    @flight = Flight.first
    @date_options = @flights.map { |d| [d.departure_date, d.departure_date] }.uniq
    # return unless params[:commit] == 'Find Flights'

    # @selected_flights = Flight.all.includes(:origin, :destination)
    #                           .path(flight_params[:origin], flight_params[:destination])
    #                           .where(departure_date: flight_params[:departure_date])
  end

  private

  # def flight_params
  #   params.require(:flights).permit(:origin, :destination, :departure_date, :number_of_tickets)
  # end
end
