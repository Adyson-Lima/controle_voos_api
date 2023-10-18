require 'rails_helper'

RSpec.describe Api::V1::FlightsController, type: :controller do
  
  before{
    @flight = Flight.create(flight_number: "1234", flight_company: "latam", flight_from: "bel", flight_to: "poa", flight_gate: "2", flight_hour: "18:45", flight_status: "confirmed")
  }
  
  describe 'GET /api/v1/flights' do
    
    it 'Consegue listar todos os voos e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
        
  end
  
  describe 'GET /api/v1/flight/devices/{id}' do
    
    it 'Consegue listar um voo específico e retornar status 200?' do
      get :show, params: {id: @flight.id}
      expect(response.body).to include_json(id: @flight.id)
      expect(response).to have_http_status(200)
    end
    
  end
  
  describe 'POST /api/v1/flights' do
    
    it 'Consegue criar um voo e retornar status 201?' do
      
      post :create, params: {flight: {flight_number: @flight.flight_number, flight_company: @flight.flight_company, flight_from: @flight.flight_from, flight_to: @flight.flight_to, flight_gate: @flight.flight_gate, flight_hour: @flight.flight_hour, flight_status: @flight.flight_status},format: :json}
      
      expect(response.body).to include_json(flight_number: @flight.flight_number)
      expect(response).to have_http_status(201)
      
    end
    
  end
  
end
