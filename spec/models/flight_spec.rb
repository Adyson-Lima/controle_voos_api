require 'rails_helper'

RSpec.describe Flight, type: :model do
  
  before {
    @flight = Flight.new
    }
  
  describe "Teste de preenchimento dos campos do model Flight" do
    
    it "flight_number preenchido?" do
      @flight.flight_number = "1234"
      expect(@flight.flight_number).to eq("1234")
    end
    
    it "flight_company preenchido?" do
      @flight.flight_company = "gol"
      expect(@flight.flight_company).to eq("gol")
    end
    
    it "flight_from preenchido?" do
      @flight.flight_from = "porto alegre"
      expect(@flight.flight_from).to eq("porto alegre")
    end
    
  end
end
