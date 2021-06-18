class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  with_options presence: true do
    validates :title
    validates :target_time
  end

  with_options numericality: { other_than: 1 } do
    validates :genre_id
  end

  is_impressionable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end