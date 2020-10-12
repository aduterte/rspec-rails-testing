require 'rails_helper'

RSpec.describe User, type: :model do
  it "Totals Items in Users Cart" do
    #setup
    user = User.create(name: "Alex")
    item1 = Item.create(name: "Soda", price: 3.50)
    item2 = Item.create(name: "Chips", price: 1.50)
    Cart.create(user: user, item: item1)
    Cart.create(user: user, item: item2)

    #verify
    expect(user.total_cart).to eq(5.00)
  end
end

