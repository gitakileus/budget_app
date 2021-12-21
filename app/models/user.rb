class User < ApplicationRecord
  has_many :groups, dependent: :destroy, through: :groups_payments
  has_many :payments, dependent: :destroy, through: :groups_payments
end
