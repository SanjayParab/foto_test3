require 'spec_helper'

describe "galleries/edit.html.erb" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => galleries_path(@gallery), :method => "post" do
      assert_select "input#gallery_name", :name => "gallery[name]"
      assert_select "input#gallery_description", :name => "gallery[description]"
    end
  end
end
