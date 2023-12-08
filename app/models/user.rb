class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :name, presence: true

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
