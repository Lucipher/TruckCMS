class Repairer < ActiveRecord::Base
  attr_accessible :hour_service_24, :business_name, :phone_number, :picture, 
                  :postcode, :state, :street_address_1, :street_address_2, :suburb
end
