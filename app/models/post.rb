class Post < ApplicationRecord
  validates :text, presence: true
  validates :title, presence: true
  belongs_to :user, optional: true
  mount_uploader :image, ImageUploader

  def user
    return User.find_by(id: self.user_id)
  end
end
