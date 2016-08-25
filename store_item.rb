module StoreFront
  class StoreItems
    attr_reader(:color, :price, :name, :expensive)
    def initialize(item_hash)
      @color = item_hash[:color]
      @price = item_hash[:price]
      @name = item_hash[:name]
      @expensive = item_hash[:expensive]
    end

    def info
      puts "The #{color} #{name} has a price of $#{price}."
    end
  end
end

