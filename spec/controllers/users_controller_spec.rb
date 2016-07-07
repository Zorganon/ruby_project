require 'rails_helper'

describe UsersController, :type => :controller do
  before do
    @user = FactoryGirl.create(:user)
    @user2 = FactoryGirl.create(:user)
  end 
  
    describe "GET #show" do
      context "user logged in" do
        before do
          sign_in @user
        end
        it "loads correct user detail" do
          get :show, id: @user.id
          expect(response).to have_http_status(200)
          expect(assigns(:user)).to eq @user
        end 
        
      end
    
      context "no user is logged in" do
        it "redirects to login" do
          get :show, id: @user.id
          expect(response).to redirect_to(root_path)
        end
      end
      
      context "user 1 not able to access user 2" do
        before do
          sign_in @user
        end
        it "redirects to login" do
          get :show, id: @user2.id
          expect(response).to redirect_to(root_path)
        end
      end
    end
end