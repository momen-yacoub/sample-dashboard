class Product < ApplicationRecord

  belongs_to :vendor

  validates :name, :vendor_id, :price, :quantity, presence: true
  validates_numericality_of :quantity, greater_than: 0
end
