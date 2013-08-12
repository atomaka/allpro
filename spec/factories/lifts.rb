# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lift do
    parent_workout 1
    lift_type "MyString"
    sets 1
    repititions 1
    comment "MyText"
  end
end
