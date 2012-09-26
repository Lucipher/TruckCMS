# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fleet do
    pic "MyString"
    make "MyString"
    model "MyString"
    year 1
    VIN "MyString"
    registration "MyString"
    fleet_number "MyString"
    auto_services false
  end
end
