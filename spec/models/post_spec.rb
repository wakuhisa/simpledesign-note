require 'rails_helper'

RSpec.describe Post, type: :model do

  it "タイトル、テキストがある場合、有効である" do
    expect(FactoryBot.create(:post)).to be_valid
  end

end