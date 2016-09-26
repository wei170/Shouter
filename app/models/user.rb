class User < ActiveRecord::Base
  has_many :shouts

  has_many :followed_user_relationships,
    foreign_key: :follower_id,
    class_name: 'FollowingRelationship'
  # change to "SELECT * FROM following_relationships WHERE follower_id - ?"
  has_many :followed_users, through: :followed_user_relationships

  has_many :follower_relationships, 
    foreign_key: :followed_user_id,
    class_name: 'FollowingRelationship'
  has_many :followers, through: :follower_relationships

  # These are 'rails' generate
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
