class User < ApplicationRecord
  has_secure_password
  has_many :poems, dependent: :destroy
  has_many :favorited_poems, dependent: :destroy
  has_many :favorite_poems, through: :favorited_poems, source: :poem
  has_many :active_relationships, class_name: 'Relationship',
                                  foreign_key: "follower_id",
                                  dependent: :destroy
  has_many :passive_relationships, class_name: 'Relationship',
                                  foreign_key: "followed_id",
                                  dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { maximum: 50 }
end
