require 'rails_helper'

RSpec.describe Color, type: :model do
  it "can create a minimal color" do
    color = Color.create!({name: 'purple'})
    expect(color.name).to eq('purple')
  end
  it "has expected attributes" do
  	params = {name: 'purple', rgb:'xxx', hex:'yyy'}
    color = Color.create!(params)
    expect(color).to have_attributes(params)
  end
  it "has a default factory" do
  	color = FactoryBot.build(:color)
    expect(color).not_to be_nil
  end
  it "has an override factory" do
  	color = FactoryBot.build(:color, name: 'fred')
    expect(color.name).to eq('fred')
  end
end