require 'rails_helper'

RSpec.describe "pages/show", type: :view do
  before(:each) do
    assign(:page, Page.create!(
      title: "MyText",
      subtitle: "MyText",
      body: "MyPage",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyPage/)
  end
end
