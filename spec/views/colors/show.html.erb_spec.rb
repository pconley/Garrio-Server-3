require 'rails_helper'

RSpec.describe "colors/show", type: :view do
  before(:each) do
    @color = assign(:color, Color.create!(
      :name => "Name",
      :rgb => "Rgb",
      :hex => "Hex"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Rgb/)
    expect(rendered).to match(/Hex/)
  end
end
