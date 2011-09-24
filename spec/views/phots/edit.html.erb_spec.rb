require 'spec_helper'

describe "phots/edit.html.erb" do
  before(:each) do
    @phot = assign(:phot, stub_model(Phot,
      :image_name => "MyString"
    ))
  end

  it "renders the edit phot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phots_path(@phot), :method => "post" do
      assert_select "input#phot_image_name", :name => "phot[image_name]"
    end
  end
end
