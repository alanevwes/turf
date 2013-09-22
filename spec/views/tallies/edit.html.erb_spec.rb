require 'spec_helper'

describe "tallies/edit" do
  before(:each) do
    @tally = assign(:tally, stub_model(Tally,
      :amount => 1,
      :user_id => 1
    ))
  end

  it "renders the edit tally form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tally_path(@tally), "post" do
      assert_select "input#tally_amount[name=?]", "tally[amount]"
      assert_select "input#tally_user_id[name=?]", "tally[user_id]"
    end
  end
end
