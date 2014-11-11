require 'rails_helper'

RSpec.describe "diets/index", :type => :view do
  before(:each) do
    assign(:diets, [
      Diet.create!(
        :name => "Name",
        :description => "MyText",
        :icon => "Icon",
        :image => "Image"
      ),
      Diet.create!(
        :name => "Name",
        :description => "MyText",
        :icon => "Icon",
        :image => "Image"
      )
    ])
  end

  it "renders a list of diets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
