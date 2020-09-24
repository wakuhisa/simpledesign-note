FactoryBot.define do
  factory :user do
    nickname { "testman" }
    sequence(:email) { |n| "testman#{n}@example.com" }
    password { "password" }
  end
end