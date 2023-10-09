class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :flight_company
      t.string :flight_from
      t.string :flight_to
      t.string :flight_gate
      t.string :flight_hour
      t.string :flight_status

      t.timestamps
    end
  end
end
