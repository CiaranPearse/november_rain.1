require 'rails_helper'

RSpec.describe "categories/index", :type => :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :name => "Name",
        :description => "MyText",
        :icon => "Icon",
        :image => "Image"
      ),
      Category.create!(
        :name => "Name",
        :description => "MyText",
        :icon => "Icon",
        :image => "Image"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
