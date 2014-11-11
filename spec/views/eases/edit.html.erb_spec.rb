require 'rails_helper'

RSpec.describe "eases/edit", :type => :view do
  before(:each) do
    @ease = assign(:ease, Ease.create!(
      :name => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit ease form" do
    render

    assert_select "form[action=?][method=?]", ease_path(@ease), "post" do

      assert_select "input#ease_name[name=?]", "ease[name]"

      assert_select "textarea#ease_description[name=?]", "ease[description]"

      assert_select "input#ease_icon[name=?]", "ease[icon]"

      assert_select "input#ease_image[name=?]", "ease[image]"
    end
  end
end
