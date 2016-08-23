# store_item_1 = {color: "black", price: 10, expensive: true}
# store_item_2 = {:color => "blue", :price => 9 expensive: true}
# store_item_3 = {color: "gray", price: 7, expensive: true}

class Store_Items

  def initialize(item_hash)
    @color = item_hash[:color]
    @price = item_hash[:price]
    @name = item_hash[:name]
    @expensive = item_hash[:expensive]
  end

  def color
    @color
  end

  def price
    @price
  end

  def name
    @name
  end

  def expensive
    @expensive
  end

  def info
    puts "The #{color} #{name} has a price of $#{price}."
  end
end

item_1 = Store_Items.new({color: "black", name: "car", :price => 80000, :expensive => true})

puts item_1.color
puts item_1.price
puts item_1.expensive
puts item_1.info

