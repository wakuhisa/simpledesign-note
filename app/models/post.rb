class Post < ApplicationRecord
  validates :text, presence: true
  validates :title, presence: true
  belongs_to :user, optional: true
end
