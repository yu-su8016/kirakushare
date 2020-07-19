class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,  :validatable

  has_many :likes
  has_many :comments
  has_many :scenes


  domein = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with:  domein }, uniqueness: true
  validates :password, presence: true, length: { minimum: 7 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  def true_email
    errors.add(:email, "は使われていません。") unless User.find_by(email: email)
  end

  def true_password
    @user = User.find_by(email: email)
    if @user
      errors.add(:password, "は正しくありません。") unless @user.authenticate(password)
    else 
      errors.add(:password, "は正しくありません。")
    end
  end

  def save 
    return false if invalid?
    true
  end 

end
