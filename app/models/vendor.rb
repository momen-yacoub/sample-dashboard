class Vendor < ApplicationRecord
  validates :name, presence: true

  validates :name, :phone, uniqueness: true

  validates :phone, format: {
    with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/,
    message: 'Wrong phone format'
  }

  has_many :products, dependent: :destroy
end
