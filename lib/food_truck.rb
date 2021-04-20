class FoodTruck
  attr_reader :name,
              :inventory,
              :current_stock

  def initialize(name)
    @name = name
    @inventory = {}
    @current_stock = 0
  end

  def check_stock(item) #i dislike this strongly
    accum = []
    @inventory.each do |k, v|
      if k == item
        accum << v
      end
    end
    @current_stock += accum.shift
  end

  def stock(item, quantity)
    @inventory[item] = quantity
  end



#had a plan here, can't remember what it was
  def quantities
    @inventory.values
  end

  def quantity_comparison #can't remember why i started this way
    single_quantity = quantities.find do |quantity|
      @inventory.has_value?(quantity)
      quantity
    end
    single_quantity
  end

end
