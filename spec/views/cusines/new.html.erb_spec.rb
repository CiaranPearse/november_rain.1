require 'rails_helper'

RSpec.describe "cusines/new", :type => :view do
  before(:each) do
    assign(:cusine, Cusine.new(
      :name => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new cusine form" do
    render

    assert_select "form[action=?][method=?]", cusines_path, "post" do

      assert_select "input#cusine_name[name=?]", "cusine[name]"

      assert_select "textarea#cusine_description[name=?]", "cusine[description]"

      assert_select "input#cusine_icon[name=?]", "cusine[icon]"

      assert_select "input#cusine_image[name=?]", "cusine[image]"
    end
  end
end
