require 'rails_helper'

RSpec.describe Flight, type: :model do
  
  describe "Teste de preenchimento dos campos do model Flight" do
    
    it "flight_number preenchido?" do
      @flight.flight_number = "1234"
      expect(@flight.flight_number).to ed("1234")
    end
    
  end
end
