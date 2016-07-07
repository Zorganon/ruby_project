require 'rails_helper'

describe CommentsController, :type => :controller do
  context "POST #create" do
    before do
      @user = FactoryGirl.create(:user)
      sign_in @user
      @product = FactoryGirl.build(:product)
      post :create, FactoryGirl.create(:comment)
    end
    
    it "responds successfully" do
      expect(response).to have_http_status(201)
    end
    
  end
end 