require 'rails_helper'

RSpec.describe "publishers/new", :type => :view do
  before(:each) do
    assign(:publisher, Publisher.new(
      :name => "MyString",
      :url => "MyString",
      :logosource => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new publisher form" do
    render

    assert_select "form[action=?][method=?]", publishers_path, "post" do

      assert_select "input#publisher_name[name=?]", "publisher[name]"

      assert_select "input#publisher_url[name=?]", "publisher[url]"

      assert_select "input#publisher_logosource[name=?]", "publisher[logosource]"

      assert_select "textarea#publisher_description[name=?]", "publisher[description]"
    end
  end
end
