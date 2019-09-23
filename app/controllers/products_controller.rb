class ProductsController < ApplicationController

  def index
    @products = Product.order('id ASC').limit(18)
  end
  
end
