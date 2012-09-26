# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    fleet_id 1
    repairer_id 1
    service_type "MyString"
    warranty "MyString"
    damage "MyText"
    repair "MyString"
    self_service false
    KM_since_last_service 1.5
    time_since_last_service 1.5
  end
end
