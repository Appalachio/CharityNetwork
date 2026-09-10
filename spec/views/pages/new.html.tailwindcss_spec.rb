require 'rails_helper'

RSpec.describe "pages/new", type: :view do
  before(:each) do
    assign(:page, Page.new(
      title: "MyText",
      subtitle: "MyText",
      body: nil,
      slug: "MyText"
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do
      assert_select "textarea[name=?]", "page[title]"

      assert_select "textarea[name=?]", "page[subtitle]"

      assert_select "input[name=?]", "page[body]"
    end
  end
end
