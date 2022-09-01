class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product.as_json
  end

  def create
    product = Products.new(
      name: "CarToy",
      price: 10,
      image_url: "toy",
      description: "Cool",
    )
    product.save
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
