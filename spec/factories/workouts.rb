# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workout do
    date Time.now
    day_type { %w(heavy medium light).sample }
  end
end
