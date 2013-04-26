require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Static Pages" do
    describe "Home Page" do
      before { visit root_path }
      it { should have_selector('h1', text: "Welcome to the Sample App") }
      it { should have_selector('title', text: full_title('')) }
    end
    describe "Help Page" do
      before { visit help_path }
      it { should have_selector('h2', text: "FAQ") }
      it { should have_selector('title', text: full_title('Help')) }
    end
    describe "About Page" do
      before { visit about_path }
      it { should have_selector('h1', text: "About us") }
      it { should have_selector('title', text: full_title('About')) }
    end
      describe "Contact Page" do
        before { visit contact_path }
        it { should have_selector('h1', text: "Contact Us") }
        it { should have_selector('title', text: full_title('Contact')) }
    end
  end
end
