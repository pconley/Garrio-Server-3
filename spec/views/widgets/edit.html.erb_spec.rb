require 'rails_helper'

RSpec.describe "widgets/edit", :type => :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!(
      :name => "MyString",
      :color => "MyString",
      :size => 1
    ))
  end

  it "renders the edit widget form" do
    render

    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do

      assert_select "input#widget_name[name=?]", "widget[name]"

      assert_select "input#widget_color[name=?]", "widget[color]"

      assert_select "input#widget_size[name=?]", "widget[size]"
    end
  end
end
