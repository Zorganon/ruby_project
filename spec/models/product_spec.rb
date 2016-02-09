require 'rails_helper'

describe Product do
  before do
    @product = Product.create!(name: 'race bike')
    @user = User.create!(first_name: 'Dan', last_name: 'Mongoloid', email: 'danthehudson@gmail.com', password: 'harmonica')
    @product.comments.create!(rating: 1, user: @user, body: "awful bike!")
    @product.comments.create!(rating: 3, user: @user, body: "med bike!")
    @product.comments.create!(rating: 5, user: @user, body: "good bike!")
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