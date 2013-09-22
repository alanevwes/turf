require 'spec_helper'

describe "tallies/new" do
  before(:each) do
    assign(:tally, stub_model(Tally,
      :amount => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new tally form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tallies_path, "post" do
      assert_select "input#tally_amount[name=?]", "tally[amount]"
      assert_select "input#tally_user_id[name=?]", "tally[user_id]"
    end
  end
end
