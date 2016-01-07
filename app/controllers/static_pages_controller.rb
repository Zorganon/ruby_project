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
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'danthehudson@gmail.com',
      :subject => "A new contact from #{@name}",
      :body => @message).deliver_now
  end
end

