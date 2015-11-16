require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean


RSpec.describe VideosController, type: :controller do
  before do
    user = FactoryGirl.create(:user)
    session[:user_id] = user.id
  end
  it "shows the index view" do
    get :index
    expect(response).to be_success
  end
  it "shows a video" do
    get :show, id: 1
    expect(response).to render_template(:show)
  end
end
