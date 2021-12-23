class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :groups
  has_many :payments

  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: { minimum: 6 }
end
