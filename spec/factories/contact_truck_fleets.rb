# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_truck_fleet do
    main false
    title "MyString"
    mobile "MyString"
    email "MyString"
    truck_fleet_id 1
  end
end
