require 'spec_helper'

describe "phots/new.html.erb" do
  before(:each) do
    assign(:phot, stub_model(Phot,
      :image_name => "MyString"
    ).as_new_record)
  end

  it "renders new phot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phots_path, :method => "post" do
      assert_select "input#phot_image_name", :name => "phot[image_name]"
    end
  end
end
