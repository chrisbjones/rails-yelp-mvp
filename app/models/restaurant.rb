class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: %w( chinese italian japanese french belgian), message: "%{value} is not a valid category" }
  CATEGORIES = %w( chinese italian japanese french belgian)
end
