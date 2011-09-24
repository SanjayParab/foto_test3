require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    # Test Case 1
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",:content => "Home")
    end

  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'register'" do
    it "should be successful" do
      get 'register'
      response.should be_success
    end
  end

end
