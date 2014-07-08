# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    name "MyString"
    age 1
    address "MyText"
    desg "MyString"
  end
end
