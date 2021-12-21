class Group < ApplicationRecord
  belongs_to :user

  has_many :payments, through: :user
end
