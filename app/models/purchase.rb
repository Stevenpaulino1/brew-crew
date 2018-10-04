class Purchase < ApplicationRecord
  belongs_to :customer
  belongs_to :brew
  validates :size, inclusion: { in: ["Small","Medium","Large"]}
end
