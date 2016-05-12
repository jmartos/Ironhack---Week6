class UsersController < ApplicationController

  def index
    @users = User.order(name: :desc)
  end

  def show
    @user = User.find_by(id: params[:id])
    unless @user
      render "no_user_found"
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email]
      )

      @user.save
      redirect_to "/users"
  end

  def destroy
    @user = User.find_by(id: params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to "/users"
  end


end
