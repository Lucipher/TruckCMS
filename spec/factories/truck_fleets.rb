# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :truck_fleet do
    trading_name_of_business "MyString"
    street "MyString"
    street_2 "MyString"
    suburb "MyString"
    state "MyString"
    postcode 1
  end
end
