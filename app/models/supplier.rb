class Supplier < ApplicationRecord
has_many :images  def products
    Product.where(supplier_id: id)
  end
end
