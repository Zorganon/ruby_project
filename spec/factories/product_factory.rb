FactoryGirl.define do
  sequence(:name) { |n| "tang#{n}"}
  factory :product do
    name
    price "980"
    description "wallanooga"
  end
end