require 'spec_helper'

describe "albums/index.html.erb" do
  before(:each) do
    assign(:albums, [
      stub_model(Album,
        :gallery_id => "",
        :album_id => "",
        :album_name => "Album Name",
        :alumb_description => "Alumb Description"
      ),
      stub_model(Album,
        :gallery_id => "",
        :album_id => "",
        :album_name => "Album Name",
        :alumb_description => "Alumb Description"
      )
    ])
  end

  it "renders a list of albums" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Album Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Alumb Description".to_s, :count => 2
  end
end
