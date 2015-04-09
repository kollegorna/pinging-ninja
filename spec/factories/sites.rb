FactoryGirl.define do
  factory :site do
    url { Faker::Internet.url }
    pings_per_minute { Faker::Number.number(2) }
  end
end
