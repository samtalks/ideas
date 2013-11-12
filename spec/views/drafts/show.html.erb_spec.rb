require 'spec_helper'

describe "drafts/show" do
  before(:each) do
    @draft = assign(:draft, stub_model(Draft,
      :number => 1,
      :title => "Title",
      :blurb => "Blurb",
      :body => "MyText",
      :status => "Status",
      :idea_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/Blurb/)
    rendered.should match(/MyText/)
    rendered.should match(/Status/)
    rendered.should match(/2/)
  end
end
