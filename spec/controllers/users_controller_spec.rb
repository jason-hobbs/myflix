require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean


RSpec.describe UsersController, type: :controller do
  it "creates a new user" do
    post :create, user: { full_name: 'Sideshow', email: 'Bob@test.com' }
    expect(response).to be_success
  end
end
