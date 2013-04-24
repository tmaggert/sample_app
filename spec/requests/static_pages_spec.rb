require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Static Pages" do
    describe "Home Page" do
#      it "should have 'Sample App' in h1" do
#        visit root_path
#        page.should have_selector('h1', text: "Welcome to the Sample App")
#      end
      it "should only have have the base title without ' | '" do
        visit root_path
        page.should_not have_selector('title', text: " | ")
      end
      it "should not have a custom page title" do
        visit root_path
        page.should_not have_selector('title', text: 'Home')
      end
    end
    describe "Help Page" do
      it "should have 'FAQ' in h2" do
        visit help_path
        page.should have_selector('h2', text: "FAQ")
      end
      it "should have the title 'Help'" do
        visit help_path
        page.should have_selector('title', text: "#{base_title} | Help")
      end
    end
    describe "About Page" do
      it "should have 'About us' in h1" do
        visit about_path
        page.should have_selector('h1', text: "About us")
      end
      it "should have the title 'About'" do
        visit about_path
        page.should have_selector('title', text: "#{base_title} | About")
      end
      describe "Contact Page" do
        it "should have 'Contact Us' in h1" do
          visit contact_path
          page.should have_selector('h1', text: "Contact Us")
        end
        it "should have the title 'Contact'" do
          visit contact_path
          page.should have_selector('title', text: "#{base_title} | Contact")
        end
      end
    end
  end
end
