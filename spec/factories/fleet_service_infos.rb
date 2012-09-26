# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fleet_service_info do
    fleet_id 1
    service_id 1
    km_since_last_service 1.5
    time_since_last_service 1.5
  end
end
