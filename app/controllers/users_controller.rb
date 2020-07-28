class UsersController < ApplicationController
  def index 
    @users = User.all
  end

  def new 
    @user = Book.new
  end

  def create 
    @user = Book.new(user_params)
  end

  private 
  def user_params 
    params.require(:user).permit(:name, :password)
  end
end
