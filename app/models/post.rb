class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  validates :title,       presence: true
  validates :target_time, presence: true
  validates :genre_id,   numericality: { other_than: 1 }

  is_impressionable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end