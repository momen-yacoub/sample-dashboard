class Product < ApplicationRecord

  belongs_to :vendor
  has_many_attached :uploaded_files

  validates :name, :vendor_id, :price, :quantity, presence: true
  validates_numericality_of :quantity, greater_than: 0
end
