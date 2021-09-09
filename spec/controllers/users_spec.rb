require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /index" do
    before(:each) do
      get :index
    end

    it "returns a successful response" do
      expect(response).to be_successful
    end

    it "assigns all users to @users" do
      expect(assigns(:users)).to eq(User.all)
    end

    it "is a success" do
      expect(response).to have_http_status(:ok)
    end
  end
end
