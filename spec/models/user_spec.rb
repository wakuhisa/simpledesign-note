require 'rails_helper'

RSpec.describe User, type: :model do

  it "メール、パスワード、ニックネームがある場合、有効である" do
    user = User.new(
      email: "testman@example.com",
      password: "password",
      nickname: "testman"
    )
    expect(user).to be_valid
  end

end