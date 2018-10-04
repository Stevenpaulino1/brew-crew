class Brew < ApplicationRecord
  has_many :purchases
  has_many :customers, through: :purchases
  validates :strength, :inclusion => 1..5
end
