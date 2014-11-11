require 'rails_helper'

RSpec.describe "recipes/show", :type => :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Image Credit/)
    expect(rendered).to match(/Yeild/)
    expect(rendered).to match(/Prep/)
    expect(rendered).to match(/Cook/)
    expect(rendered).to match(/Total/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Diet/)
    expect(rendered).to match(/Course/)
    expect(rendered).to match(/Ease/)
    expect(rendered).to match(/Categories/)
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Added On/)
  end
end
