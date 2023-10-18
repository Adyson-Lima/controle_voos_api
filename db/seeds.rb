require 'faker'

puts 'Gerando voos...'

10.times do |i|
  Flight.create(flight_number: ["1234", "3456","1234","3478"].sample, 
                flight_company: ["latam", "gol", "azul"].sample, 
                flight_from: ["bel", "poa"].sample, 
                flight_to: ["gru", "cgh"].sample, 
                flight_gate: ["1","2","3","4"].sample,
                flight_hour: ["18:45", "03:00", "12:00","15:00"].sample, flight_status: ["confirmed", "estimated", "canceled", "landed"].sample
               )
end

puts 'Voos gerados com sucesso!'
