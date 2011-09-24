require 'spec_helper'

describe "phots/show.html.erb" do
  before(:each) do
    @phot = assign(:phot, stub_model(Phot,
      :image_name => "Image Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Name/)
  end
end
