class Api::V1::FlightsController < ApplicationController
  
  before_action :set_flight, only: %i[show update destroy]
  
  def index
    @flights = Flight.all
    render json: @flights
  end
  
  def show
    render json: @flight
  end

private

  def set_flight
    @flight = Flight.find(params[:id])
  end
  
  def flight_params
    params.require(:flight).permit(:flight_number, :flight_company, :flight_from, :flight_to, :flight_gate, :flight_hour, :flight_status)
  end
  
end
