class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :today_weight, presence: true
  validates :today_comment, presence: true
end