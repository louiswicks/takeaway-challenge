require 'takeaway'
describe Takeaway do
subject(:takeaway) { described_class.new(menu: menu, order: order) }
let(:menu) { double(:menu, print: printed_menu) }
let(:order) { double(:order) }
let(:printed_menu) { "Menu List" }

let(:dishes) { {chicken: 3, steak: 2, veg: 4} }

  it 'shows the menu with dishes and prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it 'select some number of several avaliable dishes' do
    expect(order).to receive(:add).thrice
    takeaway.place_order(dishes)
  end
end