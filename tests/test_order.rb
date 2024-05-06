require 'minitest/autorun'
require './order.rb'
require './inventory.rb'

class TestOrder < Minitest::Test
  def test_initialize
    order = Order.new("Ashley")
    assert_equal "ASHLEY", order.name, "Set Order initialize method failed"
  end

  def test_add_item
    order = Order.new("Jonathan")
    item = Item.new("Firecracker Shrimp", 3, 3.50)
    order.add_item(item)
    assert_equal 1, order.items.length, "Add item to order method failed"
  end

  def test_remove_item
    order = Order.new("Michel")
    item = Item.new("Firecracker Shrimp", 3, 3.50)
    order.add_item(item)
    order.add_item(Item.new("Miso", 10, 5.25))

    order.remove_item
    assert_equal 1, order.items.length, "Delete item in order method failed"
  end

  def test_total_cost
    order = Order.new("Nagasaki")
    item = Item.new("crab rangoon", 5, 3.00)
    order.add_item(item)
    order.add_item(Item.new("Calamari", 10, 5.25))
    assert_equal 67.50, order.total_cost, "Total cost of order method failed"
  end

end
