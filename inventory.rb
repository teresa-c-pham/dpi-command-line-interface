class Inventory
  attr_accessor :lunch_items
  attr_accessor :dinner_items

  def initialize(lunch, dinner)
    self.lunch_items = lunch
    self.dinner_items = dinner
  end

  def add_lunch(item)
    if !(check_item_in_list(item, lunch_items))
      self.lunch_items.push(item)
    else
      pp "Item already exists in the menu"
    end
  end

  def add_dinner(item)
    if !(check_item_in_list(item, lunch_items))
      self.dinner_items.push(item)
    else
      pp "Item already exists in the menu"
    end
  end

  def update_item(item_name, amount, cost)
    # Make sure item name follows proper format
    name = item_name.downcase.capitalize

    lunch_check = false
    # First Check for Menu Item in Lunch Menu
    self.lunch_items.each do |item|
      # Update item amount and/or cost
      if item.name == name
        lunch_check = true
        item.amount = amount
        item.cost = cost
      end
    end

    # Then Check for Menu Item in Dinner Menu
    dinner_check = false
    if lunch_check
      self.dinner_items.each do |item|
        # Update item amount and/or cost
        if item.name == name
          dinner_check = true
          item.amount = amount
          item.cost = cost
        end
      end
    end

    # If item is not found in menu, do not update
    if (!(lunch_check) && !(dinner_check))
      pp "Menu Item not found."
    end
  end


  # Helper Functions

  # Check if Item exists in Array
  def check_item_in_list(item, arr)
    arr.each do |element|
    return true if element.name == item.name
    end
    return false
  end

end


# Distinguish Lunch Menu Items from Dinner Menu Items
class Item
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
      raise TypeError, 'Menu item name must be a string'
    end

    @name = value.downcase.capitalize
  end

  def amount=(value)
    # Check to see if amount is an integer
    unless value.is_a?(Integer)
      raise TypeError, 'Menu item amount must be an integer'
    end

    @amount = value
  end

  def cost=(value)
    # Check to see if cost is a float
    unless value.is_a?(Float)
      raise TypeError, 'Menu item cost must be a float'
    end

    @cost = value.round(2)
  end

  def total_cost
    return amount * cost
  end
end
