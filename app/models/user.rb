class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :groups, dependent: :destroy, through: :groups_payments
  has_many :payments, dependent: :destroy, through: :groups_payments

  # validates :name, :email, presence: true
  validates :password, length: { minimum: 6 }
end
