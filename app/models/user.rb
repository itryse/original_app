class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname,       presence: true
  validates :gender_id,      numericality: { other_than: 1 }
  validates :age_id,         numericality: { other_than: 1 }
  validates :profile,        presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'パスワードには英字と数字を含めて6文字以上で設定してください'

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :age

end