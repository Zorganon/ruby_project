class StaticPagesController < ApplicationController
  def index
    @products=Product.limit(4)
    @carouselcount=0
  end
  
  def about
  end
  
  def landing_page
  end
  
  def contact
  end
  
  def admin
    @products=Product.new
  end
end

