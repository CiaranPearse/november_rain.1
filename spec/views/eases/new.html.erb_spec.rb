require 'rails_helper'

RSpec.describe "eases/new", :type => :view do
  before(:each) do
    assign(:ease, Ease.new(
      :name => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new ease form" do
    render

    assert_select "form[action=?][method=?]", eases_path, "post" do

      assert_select "input#ease_name[name=?]", "ease[name]"

      assert_select "textarea#ease_description[name=?]", "ease[description]"

      assert_select "input#ease_icon[name=?]", "ease[icon]"

      assert_select "input#ease_image[name=?]", "ease[image]"
    end
  end
end
