class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :flight_num
      t.time :departs_at
      t.integer :seats
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :arrival_airport_id
      t.integer :departure_airport_id

      t.timestamps
    end
  end
end
