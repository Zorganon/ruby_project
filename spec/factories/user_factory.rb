FactoryGirl.define do
  sequence(:email) { |n| "danthe#{n}hudson@gmail.com" }
  factory :user do
    email
    password "harmonica"
    first_name "dan"
    last_name "test"
    admin false
  end
end