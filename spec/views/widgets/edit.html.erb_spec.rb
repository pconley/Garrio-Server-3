require 'rails_helper'

RSpec.describe "widgets/edit", :type => :view do
  before(:each) do
    @color = FactoryBot.create(:color, name: 'bigred')
    @widget = assign(:widget, Widget.create!(:name => "wigname", color_id: @color.id, size: 1))
  end

  it "renders the edit widget form" do
    render

    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do

      assert_select "input#widget_name[name=?]", "widget[name]"

      # assert_select "input#widget_color_id[name=?]", "bigred"

      assert_select "input#widget_size[name=?]", "widget[size]"
    end
  end
end
