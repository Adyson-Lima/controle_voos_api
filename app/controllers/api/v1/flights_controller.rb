class Api::V1::FlightsController < ApplicationController
  
  before_action :set_flight, only: %i[show update destroy]
  
  def index
    @flights = Flight.all
    render json: @flights
  end
  
  def show
    render json: @flight
  end
  
  def create
    
    @flight = Flight.new(flight_params)
    
    if @flight.save
      render json: @flight, status: :created, location: api_v1_flight_url(@flight)
    else
      render json: @flight.errors, status: :internal_server_error
    end
    
  end
  
  def update
    
    if @flight.update(flight_params)
      render json: @flight
    else
      render json: @flight.errors, status: :internal_server_error
    end
    
  end

private

  def set_flight
    @flight = Flight.find(params[:id])
  end
  
  def flight_params
    params.require(:flight).permit(:flight_number, :flight_company, :flight_from, :flight_to, :flight_gate, :flight_hour, :flight_status)
  end
  
end
