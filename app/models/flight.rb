class Flight < ApplicationRecord
  validates :flight_number, :flight_company, :flight_from, :flight_to, :flight_gate, :flight_hour, :flight_status, presence :true
end
