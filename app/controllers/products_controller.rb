class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    render template: "products/index"
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    product.save
    @product = product
    
    if @product.valid?
      render template: "products/show"
    else
      render json: { message: "Hey, something went wrong!", errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def update
    product = Product.find_by(id: params["id"])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["desrciption"] || product.desrciption
    product.save
    @product = product
    if @product.valid?
      render template: "products/show"
    else
      render json: { message: "Hey, something went wrong!", errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product successfully destroyed!" }
  end
end
