class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @flights = Flight.all.includes(:origin, :destination)
    @date_options = @flights.map{ |d| [d.departure_date_formatted, d.departure_date_formatted] }.uniq
    @selected_flights
  end
end
