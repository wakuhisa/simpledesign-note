require 'rails_helper'

RSpec.describe Post, type: :model do

  it "タイトル、テキストがある場合、有効である" do
    expect(FactoryBot.create(:post)).to be_valid
  end

  it "タイトルがない場合、無効である" do
    post = FactoryBot.build(:post, title: nil)
    expect(post.valid?).to eq(false)
  end

  it "テキストがない場合、無効である" do
    post = FactoryBot.build(:post, text: nil)
    expect(post.valid?).to eq(false)
  end

end