class ProductController < ApplicationController
  def all_product_method
    product = Product.first
    render json: product.as_json
  end

  def first_product_method
    product = Product.first
    render json: product.as_json
  end

  def second_product_method
    product = Product.second
    render json: product.as_json
  end

  def index
    product = Product.all

    def show
      product = Product.find_by(id: params["id"])
      render json: product.as_json
    end
  end
end
