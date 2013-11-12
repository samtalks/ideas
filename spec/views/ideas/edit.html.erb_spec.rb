require 'spec_helper'

describe "ideas/edit" do
  before(:each) do
    @idea = assign(:idea, stub_model(Idea,
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit idea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", idea_path(@idea), "post" do
      assert_select "input#idea_title[name=?]", "idea[title]"
      assert_select "input#idea_user_id[name=?]", "idea[user_id]"
    end
  end
end
