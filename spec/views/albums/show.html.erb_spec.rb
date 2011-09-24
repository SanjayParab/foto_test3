require 'spec_helper'

describe "albums/show.html.erb" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :gallery_id => "",
      :album_id => "",
      :album_name => "Album Name",
      :alumb_description => "Alumb Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Album Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Alumb Description/)
  end
end
