# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :repairer do
    business_name "MyString"
    picture "MyString"
    street_address_1 "MyString"
    street_address_2 "MyString"
    suburb "MyString"
    state "MyString"
    postcode 1
    hour_service_24 false
    phone_number "MyString"
  end
end
