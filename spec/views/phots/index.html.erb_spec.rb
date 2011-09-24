require 'spec_helper'

describe "phots/index.html.erb" do
  before(:each) do
    assign(:phots, [
      stub_model(Phot,
        :image_name => "Image Name"
      ),
      stub_model(Phot,
        :image_name => "Image Name"
      )
    ])
  end

  it "renders a list of phots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Name".to_s, :count => 2
  end
end
