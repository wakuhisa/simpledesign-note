FactoryBot.define do
  factory :post do
    title { "test" }
    text { "tester" }
    # user_id { "1" }
    # image { [ Rack::Test::UploadedFile.new(Rails.root.join( 'app/assets/images/test.jpg' ), 'app/assets/images/test.jpg') ] }
    association :user
  end
end