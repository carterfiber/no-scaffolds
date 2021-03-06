class WelcomeController < ApplicationController
  def index
  	@product = Product.new
  end

  def users
  	@users = User.all
  end

  def products
  	@products = Product.all
  end

  def create_users
  	user = User.create(name: params[:name], age: params[:age].to_i)
  	redirect_to users_path
  end

  def create_products
  	product = Product.create(product_params)
  	redirect_to products_path
  end

  private

  def product_params
  	params.require(:product).permit(:name, :price, :quantity)
  end
end
