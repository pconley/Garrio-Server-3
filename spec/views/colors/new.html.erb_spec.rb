require 'rails_helper'

RSpec.describe "colors/new", type: :view do
  before(:each) do
    assign(:color, Color.new(
      :name => "MyString",
      :rgb => "MyString",
      :hex => "MyString"
    ))
  end

  it "renders new color form" do
    render

    assert_select "form[action=?][method=?]", colors_path, "post" do

      assert_select "input[name=?]", "color[name]"

      assert_select "input[name=?]", "color[rgb]"

      assert_select "input[name=?]", "color[hex]"
    end
  end
end
