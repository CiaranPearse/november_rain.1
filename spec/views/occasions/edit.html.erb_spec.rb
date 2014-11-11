require 'rails_helper'

RSpec.describe "occasions/edit", :type => :view do
  before(:each) do
    @occasion = assign(:occasion, Occasion.create!(
      :name => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit occasion form" do
    render

    assert_select "form[action=?][method=?]", occasion_path(@occasion), "post" do

      assert_select "input#occasion_name[name=?]", "occasion[name]"

      assert_select "textarea#occasion_description[name=?]", "occasion[description]"

      assert_select "input#occasion_icon[name=?]", "occasion[icon]"

      assert_select "input#occasion_image[name=?]", "occasion[image]"
    end
  end
end
