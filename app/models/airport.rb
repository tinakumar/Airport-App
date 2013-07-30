class Airport < ActiveRecord::Base
  attr_accessible :city, :code, :created_at, :updated_at

  has_many :flights

end
