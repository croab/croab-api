class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products, status: 200
  end

  def show
    @product = Product.find_by(params[:id])
    if @product
      render json: @product, status: 200
    else
      render json: {error: "Product not found"}
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: 200
    else
      render json: {error: "Error creating product"}
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand, :price, :description)
  end
end
