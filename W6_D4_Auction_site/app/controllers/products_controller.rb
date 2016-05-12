class ProductsController < ApplicationController

  def index
    @products = Product.order(title: :desc)
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @product = @user.products
  end

  def new     
    @user = User.find(params[:user_id])
    @product = @user.products.new
  end

  def create
    @user = User.find(params[:user_id])
    @product = @user.products.new(
      title: params[:product][:title],
      description: params[:product][:description],
      deadline: params[:product][:deadline]
      )
    @product.save
    redirect_to "/users/:user_id/products"

  end

  def destroy
  end
end
