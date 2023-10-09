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
    
  end
end
