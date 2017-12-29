require 'rails_helper'

RSpec.describe "colors/index", type: :view do
  before(:each) do
    assign(:colors, [
      Color.create!(
        :name => "Name",
        :rgb => "Rgb",
        :hex => "Hex"
      ),
      Color.create!(
        :name => "Name",
        :rgb => "Rgb",
        :hex => "Hex"
      )
    ])
  end

  it "renders a list of colors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Rgb".to_s, :count => 2
    assert_select "tr>td", :text => "Hex".to_s, :count => 2
  end
end
