class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end
end
