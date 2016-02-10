require 'rails_helper'

describe Product do
  before do
    @product = FactoryGirl.build(:product)
    @user = FactoryGirl.build(:user)
    FactoryGirl.create(:comment, rating: 1, user: @user, product: @product)
    FactoryGirl.create(:comment, rating: 3, user: @user, product: @product)
    FactoryGirl.create(:comment, rating: 5, user: @user, product: @product)
  end
  it "returns the average rating of all comments" do
    expect(@product.comments.average(:rating)).to eq 3
  end
  
  context "is not valid" do
    it "should return a not valid product" do
      expect(Product.new(description: "nice bike")).not_to be_valid
    end
  end
   
end