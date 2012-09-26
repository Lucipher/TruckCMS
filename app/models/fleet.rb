class Fleet < ActiveRecord::Base
  attr_accessible :VIN, :auto_services, :fleet_number, :make, :model, :pic, :registration, :year, :truck_fleet_id
  belongs_to :truck_fleet
end
