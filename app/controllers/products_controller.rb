class ProductsController < ApplicationController

  def index
    @products = Product.order('id ASC').limit(18)
  end

  def show
    @product = Product.find(params[:id])
  end


  
end
