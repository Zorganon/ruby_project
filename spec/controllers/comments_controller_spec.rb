require 'rails_helper'

describe CommentsController, :type => :controller do
  context "POST #create" do
    before do
      user = User.new(:email => dan.hudson@gmail.com, :password => 'W1ndCh$ps')
      post :create, :product_id => 4,
    end
    
    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    
    it "renders the index template" do
      expect(response).to render_template("index")
    end
  end
end