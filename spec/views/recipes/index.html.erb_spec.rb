require 'rails_helper'

RSpec.describe "recipes/index", :type => :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :title => "Title",
        :description => "MyText",
        :image => "Image",
        :image_credit => "Image Credit",
        :yeild => "Yeild",
        :prep => "Prep",
        :cook => "Cook",
        :total => "Total",
        :ingredients => "MyText",
        :diet => "Diet",
        :course => "Course",
        :ease => "Ease",
        :categories => "Categories",
        :tags => "Tags",
        :ratings => 1,
        :comments => 2,
        :facebook => 3,
        :twitter => 4,
        :pinterest => 5,
        :stumbleupon => 6,
        :gplus => 7,
        :author => "Author",
        :added_on => "Added On"
      ),
      Recipe.create!(
        :title => "Title",
        :description => "MyText",
        :image => "Image",
        :image_credit => "Image Credit",
        :yeild => "Yeild",
        :prep => "Prep",
        :cook => "Cook",
        :total => "Total",
        :ingredients => "MyText",
        :diet => "Diet",
        :course => "Course",
        :ease => "Ease",
        :categories => "Categories",
        :tags => "Tags",
        :ratings => 1,
        :comments => 2,
        :facebook => 3,
        :twitter => 4,
        :pinterest => 5,
        :stumbleupon => 6,
        :gplus => 7,
        :author => "Author",
        :added_on => "Added On"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Image Credit".to_s, :count => 2
    assert_select "tr>td", :text => "Yeild".to_s, :count => 2
    assert_select "tr>td", :text => "Prep".to_s, :count => 2
    assert_select "tr>td", :text => "Cook".to_s, :count => 2
    assert_select "tr>td", :text => "Total".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Diet".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
    assert_select "tr>td", :text => "Ease".to_s, :count => 2
    assert_select "tr>td", :text => "Categories".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Added On".to_s, :count => 2
  end
end
