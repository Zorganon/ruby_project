FactoryGirl.define do
  sequence(:body) { |n| "this is review #{n}" }
  factory :comment do
    user_id 4
    body
    rating "3"
    product_id 4
  end
end