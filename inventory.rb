class Inventory

end

class Appetizer
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

class Entree
  attr_accessor :pho
  attr_accessor :fried_rice
  attr_accessor :banh_mi
  attr_accessor :salt_pepper_tofu
  attr_accessor :orange_chicken
  attr_accessor :korean_short_ribs
end

class Dessert
  attr_accessor :che
  attr_accessor :matcha_crepe
  attr_accessor :cheesecake
  attr_accessor :mochi_ice_cream
end
