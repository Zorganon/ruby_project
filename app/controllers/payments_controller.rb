class PaymentsController < ApplicationController
  def create
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user
    #create the charge on Stripe's servers, this will charge the users's card
    begin
      charge = Stripe::Charge.create(
        :amount => 100*@product.price,
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
      )
      if charge.paid
        Order.create(
          :product_id => @product.id,
          :user_id => @user.id,
          :total => @product.price)
      end
    rescue Stripe::CardError => e
      #card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "you trying to cheat us?  Something's bogus here.. #{err[:message]}"
    end
    redirect_to product_path(@product)
  end
    
end