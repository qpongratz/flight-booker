class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @flights = Flight.all
    @date_options = @flights.map { |d| [d.departure_date, d.departure_date] }.uniq
    return unless params[:commit] == 'Find Flights'

    @selected_flights = Flight.all.includes(:origin, :destination)
                              .path(params[:origin_id], params[:destination_id])
                              .where(departure_date: params[:departure_date])
  end
end
