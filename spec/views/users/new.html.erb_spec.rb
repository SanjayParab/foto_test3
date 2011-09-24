require 'spec_helper'

describe "users/new.html.erb" do

    before(:each) do
    @attr = {
      :first_name => "Example",
      :last_name => " User",
      :email_id => "user@example.com",
      :hashed_password => "foobar",
      :salt => "salt1"
    }
  end


  it "should create a new instance given valid attributes" do
        f1=User.create(@attr)
        f1
  end




end
