class User < ApplicationRecord
    has_many :carts
    has_many :items, through: :carts

    def total_cart
        total = 0
        self.items.each{|item| total += item.price}
        total
    end
end
