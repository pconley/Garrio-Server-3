require 'rails_helper'

RSpec.describe "widgets/show", :type => :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!(
      :name => "Name",
      :color => "Color",
      :size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/1/)
  end
end
