require 'spec_helper'

describe "albums/new.html.erb" do
  before(:each) do
    assign(:album, stub_model(Album,
      :gallery_id => "",
      :album_id => "",
      :album_name => "MyString",
      :alumb_description => "MyString"
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => albums_path, :method => "post" do
      assert_select "input#album_gallery_id", :name => "album[gallery_id]"
      assert_select "input#album_album_id", :name => "album[album_id]"
      assert_select "input#album_album_name", :name => "album[album_name]"
      assert_select "input#album_alumb_description", :name => "album[alumb_description]"
    end
  end
end
