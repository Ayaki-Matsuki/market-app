class ProductsController < ApplicationController
  before_action :set_product, only: [:show]


  def index
    @products = Product.order('id ASC').limit(18)
  end
  
end
