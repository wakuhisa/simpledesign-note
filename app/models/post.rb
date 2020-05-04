class Post < ApplicationRecord
  validates :text, :title, presence: true
  belongs_to :user
end
