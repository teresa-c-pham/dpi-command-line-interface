require 'minitest/autorun'
require './inventory.rb'

class TestInventory < Minitest::Test
  def test_appetizer_initialize
    shrimp = Appetizer.new("Firecracker Shrimp", 6, 3.50)
    assert_equal 6, shrimp.amount, "Set Firecracker Shrimp amount method failed"
  end

  def test_appetizer_change_cost
    calamari = Appetizer.new("Calamari", 10, 5.25)
    calamari.cost = 6.25
    assert_equal 6.25, calamari.cost, "Set Calamari cost method failed"
  end

  def test_appetizer_change_name
    miso = Appetizer.new("Miso", 10, 5.25)
    miso.name = "miso soup"
    assert_equal "Miso soup", miso.name, "Set Miso Soup name method failed"
  end

  def test_appetizer_change_amount
    crab = Appetizer.new("crab rangoon", 5, 3.00)
    crab.amount = 8
    assert_equal 8, crab.amount, "Set Crab Rangoon amount method failed"
  end

  def test_appetizer_total_cost
    eggroll = Appetizer.new("eggroll", 5, 0.65)
    assert_equal 3.25, eggroll.total_cost, "Total cost method failed"
  end
end
