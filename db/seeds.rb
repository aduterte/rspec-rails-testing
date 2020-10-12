# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Cart.destroy_all
user = User.create(name: "Alex")
      item1 = Item.create(name: "Soda", price: 3.50)
      item2 = Item.create(name: "Chips", price: 1.50)
      Cart.create(user: user, item: item1)
      Cart.create(user: user, item: item2)