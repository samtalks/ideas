require 'spec_helper'

describe "drafts/index" do
  before(:each) do
    assign(:drafts, [
      stub_model(Draft,
        :number => 1,
        :title => "Title",
        :blurb => "Blurb",
        :body => "MyText",
        :status => "Status",
        :idea_id => 2
      ),
      stub_model(Draft,
        :number => 1,
        :title => "Title",
        :blurb => "Blurb",
        :body => "MyText",
        :status => "Status",
        :idea_id => 2
      )
    ])
  end

  it "renders a list of drafts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Blurb".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
