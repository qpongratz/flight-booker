class FlightsController < ApplicationController
  def index
    @flights = Flight.all.includes(:origin, :destination)
  end
end
