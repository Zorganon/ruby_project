require 'rails_helper'

describe ProductsController, :type => :controller do
  before do
    @product = FactoryGirl.build(:product)
  end
  
  
  context "show a product" do
    it "shows the product page" do
      get :show, id: @product.id
      expect(response).to have_http_status(200)
    end
  end
  
end 