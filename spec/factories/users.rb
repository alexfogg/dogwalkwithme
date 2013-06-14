# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, class: User do
    name 'Bob'
    email 'bob@gmail.com'
    password 'aaaa1234'
    password_confirmation 'aaaa1234'
  end
end