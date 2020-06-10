class Scene < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  validates :image, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
