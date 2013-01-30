require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the h1 'Home'" do
      visit root_path
      page.should have_selector("h1", :text => "Home")
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title', :text => "YumHunt" )
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title',:text => "| Home")
    end

  end

  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector("h1", :text =>"Help")
    end
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector("title", :text =>"YumHunt | Help")
    end

  end

  describe "About Page" do
    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector("h1", :text => "About")
    end
    it "should have the title 'About'" do
      visit about_path
      page.should have_selector("title", :text =>"YumHunt | About")
    end
  end

  describe "Contact Page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector("h1", :text => "Contact")
    end
    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector("title", :text => "YumHunt | Contact")
    end
  end


end
