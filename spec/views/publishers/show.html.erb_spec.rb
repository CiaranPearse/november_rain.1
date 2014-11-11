require 'rails_helper'

RSpec.describe "publishers/show", :type => :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :name => "Name",
      :url => "Url",
      :logosource => "Logosource",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Logosource/)
    expect(rendered).to match(/MyText/)
  end
end
