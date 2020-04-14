class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_posts
  has_many :posts, through: :user_posts
  has_many :messages
  has_one  :profile, dependent: :destroy
  
  validates :nickname, :password , :email , presence: true
end
