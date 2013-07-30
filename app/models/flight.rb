class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport_id, :departs_at, :departure_airport_id, :flight_num, :seats

  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'

  has_many :reservations

  MILEAGE_HASH = {'JFK - ORD' => 740,
                  'LAX - ORD' => 1744,
                  'ORD - SFO' => 1846,
                  'JFK - LAX' => 2475,
                  'JFK - SFO' => 2586,
                  'LAX - SFO' => 338 }

  def miles
    flight_path_array = [arrival_airport.code, departure_airport.code]
    flight_path_array.sort!
    flight_path = "#{flight_path_array[0]} - #{flight_path_array[1]}"
    Flight::MILEAGE_HASH[flight_path]
  end

  def duration_in_minutes
    return self.miles/8
  end

  def arrives_at
    return self.departs_at + (self.duration_in_minutes * 60)
  end
end





