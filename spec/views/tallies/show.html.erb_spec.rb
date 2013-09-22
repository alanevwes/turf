require 'spec_helper'

describe "tallies/show" do
  before(:each) do
    @tally = assign(:tally, stub_model(Tally,
      :amount => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
