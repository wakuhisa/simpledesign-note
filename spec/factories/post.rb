FactoryBot.define do
  factory :post do
    user_id { "1" }
    name { "testman" }
    title { "test" }
    text { "tester" }
    image { Rack::Test::UploaderFile.new(File.join(Rails.root, 'app/assets/images/test.png')) }
    association :user
  end
end