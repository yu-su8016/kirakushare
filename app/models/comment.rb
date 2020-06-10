class Comment < ApplicationRecord
  belongs_to :scene
  belongs_to :user
  has_many :likes


end
