require 'rails_helper'

describe CommentsController, :type => :controller do
  before do
    @user = FactoryGirl.create(:user)
    @product = FactoryGirl.create(:product)
    @comment = FactoryGirl.create(:comment)
  end
  context "POST #create" do
    before do
      sign_in @user
    end
    it "responds successfully" do
      @comment = FactoryGirl.build(:comment, {user: @user, product: @product})
      @comment.save
      expect(response).to have_http_status(201)
    end
  end
end