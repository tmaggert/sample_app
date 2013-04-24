require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Static Pages" do
    describe "Home Page" do
      it "should have 'Sample App' in h1" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => "Sample App")
      end
      it "should only have have the base title without ' | '" do
        visit '/static_pages/home'
        page.should_not have_selector('title', :text => " | ")
      end
      it "should not have a custom page title" do
        visit '/static_pages/home'
        page.should_not have_selector('title', :text => 'Home')
      end
    end
    describe "Help Page" do
      it "should have 'FAQ' in h2" do
        visit '/static_pages/help'
        page.should have_selector('h2', :text => "FAQ")
      end
      it "should have the title 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => "#{base_title} | Help")
      end
    end
    describe "About Page" do
      it "should have 'About us' in h1" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => "About us")
      end
      it "should have the title 'About'" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => "#{base_title} | About")
      end
      describe "Contact Us Page" do
        it "should have 'Contact Us' in h1" do
          visit '/static_pages/contact'
          page.should have_selector('h1', :text => "Contact Us")
        end
      end
    end
  end
end
