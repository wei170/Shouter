class Shout < ApplicationRecord
  belongs_to :user
  default_scope {
    order("created_at DESC")
  }
  # user cannot send blank shout
  validates :body, presence: true
end