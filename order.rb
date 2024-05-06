class Order
  attr_accessor :name
  attr_accessor :items

  def initialize(name)
    self.name = name
    self.items = Array.new
  end

  def name=(value)
    # Check to see if name is a string
    unless value.is_a?(String)
      raise TypeError, 'Guest name must be a string'
    end

    @name = value.upcase
  end

  def items=(value)
    # Check to see if order items are of type Array
    unless value.is_a?(Array)
      raise TypeError, 'Order items must be an Array'
    end

    @items = value
  end

  def add_item(item)
    self.items.append(item)
  end

  def remove_item
    self.items.pop()
  end

  def total_cost
    cost = 0.0
    self.items.each do |item|
      cost += item.total_cost
    end

    return cost
    end


end
