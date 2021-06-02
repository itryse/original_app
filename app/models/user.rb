class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :nickname,       presence: true
  validates :gender_id,      numericality: { other_than: 1 }
  validates :age_id,         numericality: { other_than: 1 }
  validates :goal_weight_id, numericality: { other_than: 1 }
  validates :now_weight_id,  numericality: { other_than: 1 }
  validates :occupation_id,  numericality: { other_than: 1 }
  validates :profile,        presence: true

  has_many :posts

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :age
  belongs_to :goal_weight
  belongs_to :now_weight
  belongs_to :occupation

end