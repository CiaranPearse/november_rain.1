require 'rails_helper'

RSpec.describe "publishers/edit", :type => :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :name => "MyString",
      :url => "MyString",
      :logosource => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit publisher form" do
    render

    assert_select "form[action=?][method=?]", publisher_path(@publisher), "post" do

      assert_select "input#publisher_name[name=?]", "publisher[name]"

      assert_select "input#publisher_url[name=?]", "publisher[url]"

      assert_select "input#publisher_logosource[name=?]", "publisher[logosource]"

      assert_select "textarea#publisher_description[name=?]", "publisher[description]"
    end
  end
end
