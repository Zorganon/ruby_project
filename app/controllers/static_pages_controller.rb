class StaticPagesController < ApplicationController
  def index
  end
  
  def about
  end
  
  def landing_page
    @featured_product = Product.first
  end
end
