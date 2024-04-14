require 'minitest/autorun'
require './inventory.rb'

class TestMenuItem < Minitest::Test
  def test_initialize
    shrimp = Item.new("Firecracker Shrimp", 6, 3.50)
    assert_equal 6, shrimp.amount, "Set Item amount method failed"
  end

  def test_change_cost
    calamari = Item.new("Calamari", 10, 5.25)
    calamari.cost = 6.25
    assert_equal 6.25, calamari.cost, "Set Item cost method failed"
  end

  def test_change_name
    miso = Item.new("Miso", 10, 5.25)
    miso.name = "miso soup"
    assert_equal "Miso soup", miso.name, "Set Item name method failed"
  end

  def test_change_amount
    crab = Item.new("crab rangoon", 5, 3.00)
    crab.amount = 8
    assert_equal 8, crab.amount, "Set Item amount method failed"
  end

  def test_total_cost
    eggroll = Item.new("eggroll", 5, 0.65)
    assert_equal 3.25, eggroll.total_cost, "Total cost method failed"
  end
end

class TestInventory < Minitest::Test
  def test_initialize
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]
    
    inventory = Inventory.new(lunch, dinner)

    assert_equal lunch, inventory.lunch_items, "Set initialized items method failed"
  end

  def test_check_item_list
    item = Item.new("Firecracker Shrimp", 1, 7.75)
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]
    
    inventory = Inventory.new(lunch, dinner)

    assert_equal true, inventory.check_item_in_list(item, lunch), "Check Item in List method failed"
  end

  def test_add_lunch
    item = Item.new("eggroll", 5, 0.65)
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]
    
    inventory = Inventory.new(lunch, dinner)
    inventory.add_lunch(item)

    assert_equal 3, inventory.lunch_items.length, "Add Lunch Item method failed"
  end

  def test_add_dinner
    item = Item.new("combination fried rice", 1, 7.75)
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]
    
    inventory = Inventory.new(lunch, dinner)
    inventory.add_dinner(item)

    assert_equal 3, inventory.dinner_items.length, "Add Dinner Item method failed"
  end

  def test_update_item
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]
    
    inventory = Inventory.new(lunch, dinner)
    inventory.update_item("fiRECRACKER shrimp", 10, 3.50)
    assert_equal 10, lunch[0].amount, "Update Menu Item method failed"
  end
end
