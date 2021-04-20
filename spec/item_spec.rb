require 'rspec'
require './lib/item'
require './lib/food_truck'

RSpec.describe Item do
  it 'exists' do
    item1 = Item.new({name: "Peach Pie (Slice)", price: "$3.75"})

    expect(item1).to be_instance_of(Item)
  end

  it 'has attributes' do
    item1 = Item.new({name: "Peach Pie (Slice)", price: "$3.75"})

    expect(item1.name).to eq("Rocky Mountain Pies")
    expect(item1.price).to eq("$3.75")
  end 
end
