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
    
    it "flight_to preenchido?" do
      @flight.flight_to = "belém"
      expect(@flight.flight_to).to eq("belém")
    end
    
    it "flight_gate preenchido?" do
      @flight.flight_gate = "2"
      expect(@flight.flight_gate).to eq("2")
    end
    
    it "flight_hour preenchido?" do
      @flight.flight_hour = "12:00"
      expect(@flight.flight_hour).to eq("12:00")
    end
    
    it "flight_status preenchido?" do
      @flight.flight_status = "confirmado"
      expect(@flight.flight_status).to eq("confirmado")
    end
    
  end
  
  describe "Teste de validação do model Flight" do
  
    it "Flight valido com campos obrigatorios preenchidos?" do
      @flight.flight_number = "1234"
      @flight.flight_company = "latam"
      @flight.flight_from = "porto alegre"
      @flight.flight_to = "belem"
      @flight.flight_gate = "2"
      @flight.flight_hour = "12:00"
      @flight.flight_status = "confirmed"
      
      expect(@flight).to be_valid
    end
    
    it "Flight invalido com campos obrigatorios em branco?" do
      flight = Flight.new
      expect(flight).to be_invalid      
    end
    
  end
  
end
