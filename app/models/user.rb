class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :events

  validates :nickname, presence: true, length: { maximum: 6 }
  validates :email, presence: true
  validates :password, presence: true
end