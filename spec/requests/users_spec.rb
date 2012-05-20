require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_path
      response.status.should be(200)
    end
  end
  
  subject {page}
  
  describe "signup page" do
    before {visit signup_path}
    
    it {should have_selector('h1', text: 'Sign up')}
    it {should have_selector('title', text: full_title('Sign up'))}
  end
  
end
