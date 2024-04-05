class Inventory

end


# Distinguish Lunch Menu Items from Dinner Menu Items
class Lunch
  attr_accessor :name
  attr_accessor :cost
  attr_accessor :amount

  def initialize(name, amount, cost)
    self.name = name
    self.amount = amount
    self.cost = cost
  end

  def name=(value)
    # Check to see if name is a string
    unless value.is_a?(String)
      raise TypeError, 'Appetizer name must be a string'
    end

    @name = value.capitalize
  end

  def amount=(value)
    # Check to see if amount is an integer
    unless value.is_a?(Integer)
      raise TypeError, 'Appetizer amount must be an integer'
    end

    @amount = value
  end

  def cost=(value)
    # Check to see if cost is a float
    unless value.is_a?(Float)
      raise TypeError, 'Appetizer cost must be a float'
    end

    @cost = value.round(2)
  end

  def total_cost
    return amount * cost
  end
end

class Dinner
  attr_accessor :name
  attr_accessor :cost
  attr_accessor :amount

  def initialize(name, amount, cost)
    self.name = name
    self.amount = amount
    self.cost = cost
  end

  def name=(value)
    # Check to see if name is a string
    unless value.is_a?(String)
      raise TypeError, 'Appetizer name must be a string'
    end

    @name = value.capitalize
  end

  def amount=(value)
    # Check to see if amount is an integer
    unless value.is_a?(Integer)
      raise TypeError, 'Appetizer amount must be an integer'
    end

    @amount = value
  end

  def cost=(value)
    # Check to see if cost is a float
    unless value.is_a?(Float)
      raise TypeError, 'Appetizer cost must be a float'
    end

    @cost = value.round(2)
  end

  def total_cost
    return amount * cost
  end
end
