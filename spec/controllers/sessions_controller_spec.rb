require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean


RSpec.describe SessionsController, type: :controller do
  context "User exists" do
    before do
      @user = FactoryGirl.create(:user)
    end
    it "logs user in" do
      post :new, id: @user
      expect(response).to be_success
    end
    it "logs user out" do
      session[:user_id] = @user.id
      get :destroy, id: @user
      expect(session[:user_id]).to eq(nil)
    end
  end
end
