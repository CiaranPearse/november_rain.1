require 'rails_helper'

RSpec.describe "categories/show", :type => :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :name => "Name",
      :description => "MyText",
      :icon => "Icon",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/Image/)
  end
end
