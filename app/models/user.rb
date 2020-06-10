class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,  :validatable

  has_many :likes
  has_many :comments
  has_many :scenes
end
