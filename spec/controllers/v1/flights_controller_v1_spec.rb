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
  
end
