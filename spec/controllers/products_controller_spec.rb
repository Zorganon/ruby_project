require 'rails_helper'

describe ProductsController, :type => :controller do
  before do
    @product = FactoryGirl.create(:product)
  end
  
  context "show a product" do
    it "shows the product page" do
      get :show, id: @product.id
      expect(response).to have_http_status(200)
    end
  end
  
  describe "patch #update" do
    context "update a product" do
      it "changes the price of a product" do
        patch :update, id: @product.id, product: {price: 22}
        expect(response).to redirect_to(product_path)
      end
      it "changes the name of a product" do
        patch :update, id: @product.id, product: {name: "blemflark"}
        expect(response).to redirect_to(product_path)
      end
      
      it "changes the description of a product" do
        patch :update, id: @product.id, product: {description: "why bother?"}
        expect(response).to redirect_to(product_path)
      end
    end
  end
  
  describe "delete #destroy" do
    before do
      @product = FactoryGirl.create(:product)
    end
    it "destroys the product" do
      delete :destroy, id: @product.id
      expect(response).to redirect_to(products_path)
    end 
  end
  
  describe "create a new product" do
    it "creates a new product" do
      @product = Product.new(name: 'wonka', price: 12, description: "generic text")
      @product.name.should == 'wonka'
    end
  end
    
end