class ProductsController < ApplicationController
  before_action :user_auth

  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save 
      redirect_to products_path, notice: "Create success!"
    else
      render :new 
    end
  end
  
  def edit
    
  end
  
  def update
  
  end
  
  def show
  
  end
  
  def destroy
  
  end


  private 
  def product_params
    params.require(:product).permit(:name, :price)
  end

  def user_auth 
    if !current_user
      redirect_to new_user_path
    end
  end

end
