require 'rails_helper'

describe Order do
  before do
    @product = FactoryGirl.build(:product)
    @user = FactoryGirl.build(:user)
    FactoryGirl.create(:order, product: @product, user: @user, )
    FactoryGirl.create(:comment, rating: 5, user: @user, product: @product)
  end
end