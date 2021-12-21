class Payment < ApplicationRecord
  belongs_to :user

  has_many :groups, through: :groups_payments
end
