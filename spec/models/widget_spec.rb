require 'rails_helper'

RSpec.describe Widget, :type => :model do
  it "can create an minimal widget" do
    w = Widget.create({name: 'fakeorange'})
    expect(w.name).to eq('fakeorange')
  end
  it "can not save an empty widget" do
    w = Widget.create {}
    w.save
    errors = ["Color must exist", "Name can't be blank"]
    expect(w.errors.full_messages).to eq(errors)
  end
  it "can create an named widget" do
    w = Widget.create({name: 'testwww'})
    expect(w.name).to eq('testwww')
  end
  it "can create an colored widget" do
  	c = Color.create!({name: 'purple'})
    w = Widget.create({name: 'testwww', color: c})
    expect(w.name).to eq('testwww')
    expect(w.color.name).to eq('purple')
  end
  it "has a default factory" do
    widget = FactoryBot.build(:widget)
    expect(widget).not_to be_nil
  end
  it "has an override factory" do
    widget = FactoryBot.build(:widget, name: 'fred')
    expect(widget.name).to eq('fred')
  end

end