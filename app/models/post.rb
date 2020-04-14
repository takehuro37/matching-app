class Post < ApplicationRecord
  has_many :user_posts
  has_many :users, through: :user_posts
  has_many :messages

  validates :title ,presence: true, length: { maximum: 40 } 
  validates :text, presence: true, length: { maximum: 1000 } 
end
