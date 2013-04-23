require 'spec_helper'

describe "StaticPages" do
  describe "Static Pages" do
    describe "Home Page" do
      it "should have 'Sample App' in h1" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => "Sample App")
      end
      it "should have the title 'Home'" do
        visit '/static_pages/home'
        page.should have_selector('title', :text => "Home")
      end
    end
    describe "Help Page" do
      it "should have 'FAQ' in h2" do
        visit '/static_pages/help'
        page.should have_selector('h2', :text => "FAQ")
      end
      it "should have the title 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('title', :text => "Help")
      end
    end
    describe "About Page" do
      it "should have 'About us' in h1" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => "About us")
      end
      it "should have the title 'About'" do
        visit '/static_pages/about'
        page.should have_selector('title', :text => "About")
      end
    end
  end
end
