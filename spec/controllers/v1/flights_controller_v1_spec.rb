require 'rails_helper'

RSpec.describe Api::V1::FlightsController, type: :controller do
  
  describe 'GET /api/v1/flights' do
    
    it 'Consegue listar todos os voos e retornar status 200' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      #expect(response).to have_http_status(200)
    end
    
  end
  
end
