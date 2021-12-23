class Group < ApplicationRecord
  belongs_to :user

  has_many :payments

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    total = 0
    payments.each do |payment|
      total += payment.amount
    end
    total
  end
end
