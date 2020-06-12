class Scene < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :image, presence: true
  has_many :comments
  mount_uploader :image, ImageUploader
end
