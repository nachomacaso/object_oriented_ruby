require './store_item.rb'
require './store_module.rb'
require './store_food.rb'

item_1 = StoreFront::StoreItems.new({color: "black", name: "car", price:  80000, expensive: true})

puts item_1.color
puts item_1.name
puts item_1.price
puts item_1.expensive

puts item_1.info