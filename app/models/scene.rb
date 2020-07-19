class Scene < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes


  validates :image, presence: true, unless: :image?
  validates :area, presence: true
  validates :text, presence: true
  mount_uploader :image, ImageUploader
end
