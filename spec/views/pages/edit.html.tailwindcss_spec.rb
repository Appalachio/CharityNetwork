require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  let(:page) {
    Page.create!(
      title: "MyText",
      subtitle: "MyText",
      body: "MyPage",
    )
  }

  before(:each) do
    assign(:page, page)
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(page), "post" do
      assert_select "textarea[name=?]", "page[title]"

      assert_select "textarea[name=?]", "page[subtitle]"

      assert_select "input[name=?]", "page[body]"
    end
  end
end
