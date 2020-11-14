class Post < ApplicationRecord
  validates :text, :title, presence: true
  belongs_to :user
  has_one_attached :img
end
