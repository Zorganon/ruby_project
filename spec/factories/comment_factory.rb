FactoryGirl.define do
  sequence(:body) { |n| "this is review #{n}" }
  factory :comment do
    user_id 1
    body
    rating "3"
    product_id 1
  end
end