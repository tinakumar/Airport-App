class User < ActiveRecord::Base
  attr_accessible :created_at, :email, :ff_miles, :first_name, :last_name, :password_digest, :updated_at

  has_secure_password

  has_many :reservations

   def ff_miles
    ff_miles_total = 0
    self.reservations.each do |reservation|
      ff_miles_total += reservation.flight.miles
    end
    ff_miles_total

end
