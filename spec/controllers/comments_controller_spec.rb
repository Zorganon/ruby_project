require 'rails_helper'

describe CommentsController, :type => :controller do
  
  before do
    @user = FactoryGirl.build(:user)
    sign_in @user
  end
  
    context "make a comment" do
      it "should not save comments without a body" do
        @comment=FactoryGirl.build(:comment, body: "")
        expect(@comment).to_not be_valid
      end
    end
    
end