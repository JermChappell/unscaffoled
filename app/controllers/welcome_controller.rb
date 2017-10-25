class WelcomeController < ApplicationController
  def index
    @product = Product.new
  end
  def create_products
    product = Product.create(product_params)
    redirect_to products_path
  end
  
  def products
    @products = Product.all
  end
  
  def users
    if params[:name] != nil
      users = User.create(name: params[:name], age: params[:age])
    end
    @users = User.all
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :price, :quantity)
    
  end
  # def create_users
  #     users = User.create(name: params[:name], age:params[:age])
  #     redirect_to users_path
  # end
  # def user
  #     @user = User.all
  # end\
  
  
  
  

end
  
      

