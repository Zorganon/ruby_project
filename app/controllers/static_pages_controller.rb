class StaticPagesController < ApplicationController
  def index
    @products=Product.limit(3)
  end
  
  def about
  end
  
  def landing_page
  end
end
