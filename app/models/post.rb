class Post < ApplicationRecord
  belongs_to :users

  validates :title, presence: true
  validates :today_weight, presence: true
  validates :today_comment, presence: true
end