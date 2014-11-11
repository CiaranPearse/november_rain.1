require 'rails_helper'

RSpec.describe "diets/new", :type => :view do
  before(:each) do
    assign(:diet, Diet.new(
      :name => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new diet form" do
    render

    assert_select "form[action=?][method=?]", diets_path, "post" do

      assert_select "input#diet_name[name=?]", "diet[name]"

      assert_select "textarea#diet_description[name=?]", "diet[description]"

      assert_select "input#diet_icon[name=?]", "diet[icon]"

      assert_select "input#diet_image[name=?]", "diet[image]"
    end
  end
end
