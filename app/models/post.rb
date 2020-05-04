class Post < ApplicationRecord
  validates :text, :title, precense: true
  belongs_to :user
end
