require 'spec_helper'

describe "drafts/edit" do
  before(:each) do
    @draft = assign(:draft, stub_model(Draft,
      :number => 1,
      :title => "MyString",
      :blurb => "MyString",
      :body => "MyText",
      :status => "MyString",
      :idea_id => 1
    ))
  end

  it "renders the edit draft form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", draft_path(@draft), "post" do
      assert_select "input#draft_number[name=?]", "draft[number]"
      assert_select "input#draft_title[name=?]", "draft[title]"
      assert_select "input#draft_blurb[name=?]", "draft[blurb]"
      assert_select "textarea#draft_body[name=?]", "draft[body]"
      assert_select "input#draft_status[name=?]", "draft[status]"
      assert_select "input#draft_idea_id[name=?]", "draft[idea_id]"
    end
  end
end
