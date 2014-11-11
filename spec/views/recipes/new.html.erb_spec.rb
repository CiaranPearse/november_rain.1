require 'rails_helper'

RSpec.describe "recipes/new", :type => :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :description => "MyText",
      :image => "MyString",
      :image_credit => "MyString",
      :yeild => "MyString",
      :prep => "MyString",
      :cook => "MyString",
      :total => "MyString",
      :ingredients => "MyText",
      :diet => "MyString",
      :course => "MyString",
      :ease => "MyString",
      :categories => "MyString",
      :tags => "MyString",
      :ratings => 1,
      :comments => 1,
      :facebook => 1,
      :twitter => 1,
      :pinterest => 1,
      :stumbleupon => 1,
      :gplus => 1,
      :author => "MyString",
      :added_on => "MyString"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input#recipe_title[name=?]", "recipe[title]"

      assert_select "textarea#recipe_description[name=?]", "recipe[description]"

      assert_select "input#recipe_image[name=?]", "recipe[image]"

      assert_select "input#recipe_image_credit[name=?]", "recipe[image_credit]"

      assert_select "input#recipe_yeild[name=?]", "recipe[yeild]"

      assert_select "input#recipe_prep[name=?]", "recipe[prep]"

      assert_select "input#recipe_cook[name=?]", "recipe[cook]"

      assert_select "input#recipe_total[name=?]", "recipe[total]"

      assert_select "textarea#recipe_ingredients[name=?]", "recipe[ingredients]"

      assert_select "input#recipe_diet[name=?]", "recipe[diet]"

      assert_select "input#recipe_course[name=?]", "recipe[course]"

      assert_select "input#recipe_ease[name=?]", "recipe[ease]"

      assert_select "input#recipe_categories[name=?]", "recipe[categories]"

      assert_select "input#recipe_tags[name=?]", "recipe[tags]"

      assert_select "input#recipe_ratings[name=?]", "recipe[ratings]"

      assert_select "input#recipe_comments[name=?]", "recipe[comments]"

      assert_select "input#recipe_facebook[name=?]", "recipe[facebook]"

      assert_select "input#recipe_twitter[name=?]", "recipe[twitter]"

      assert_select "input#recipe_pinterest[name=?]", "recipe[pinterest]"

      assert_select "input#recipe_stumbleupon[name=?]", "recipe[stumbleupon]"

      assert_select "input#recipe_gplus[name=?]", "recipe[gplus]"

      assert_select "input#recipe_author[name=?]", "recipe[author]"

      assert_select "input#recipe_added_on[name=?]", "recipe[added_on]"
    end
  end
end
