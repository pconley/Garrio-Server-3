require 'rails_helper'

RSpec.describe "colors/edit", type: :view do
  before(:each) do
    @color = assign(:color, Color.create!(
      :name => "MyString",
      :rgb => "MyString",
      :hex => "MyString"
    ))
  end

  it "renders the edit color form" do
    render

    assert_select "form[action=?][method=?]", color_path(@color), "post" do

      assert_select "input[name=?]", "color[name]"

      assert_select "input[name=?]", "color[rgb]"

      assert_select "input[name=?]", "color[hex]"
    end
  end
end
