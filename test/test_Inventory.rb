require 'minitest/autorun'
require './inventory.rb'

class TestLunchInventory < Minitest::Test
  def test_lunch_initialize
    shrimp = Lunch.new("Firecracker Shrimp", 6, 3.50)
    assert_equal 6, shrimp.amount, "Set Firecracker Shrimp amount method failed"
  end

  def test_lunch_change_cost
    calamari = Lunch.new("Calamari", 10, 5.25)
    calamari.cost = 6.25
    assert_equal 6.25, calamari.cost, "Set Calamari cost method failed"
  end

  def test_lunch_change_name
    miso = Lunch.new("Miso", 10, 5.25)
    miso.name = "miso soup"
    assert_equal "Miso soup", miso.name, "Set Miso Soup name method failed"
  end

  def test_lunch_change_amount
    crab = Lunch.new("crab rangoon", 5, 3.00)
    crab.amount = 8
    assert_equal 8, crab.amount, "Set Crab Rangoon amount method failed"
  end

  def test_lunch_total_cost
    eggroll = Lunch.new("eggroll", 5, 0.65)
    assert_equal 3.25, eggroll.total_cost, "Total cost method failed"
  end
end

class TestDinnerInventory < Minitest::Test
  def test_dinner_initialize
    pho = Dinner.new("Pho", 1, 8.50)
    assert_equal 8.5, pho.cost, "Initialize Dinner method failed"
  end

  def test_dinner_change_cost
    chicken = Dinner.new("orange Chicken", 10, 7.25)
    chicken.cost = 6.75
    assert_equal 6.75, chicken.cost, "Set Dinner cost method failed"
  end

  def test_dinner_change_name
    lobster = Dinner.new("lobster", 10, 5.25)
    lobster.name = "lobster tails"
    assert_equal "Lobster tails", lobster.name, "Set Dinner name method failed"
  end

  def test_dinner_change_amount
    noodles = Dinner.new("stir-fry noodles", 1, 6.00)
    noodles.amount = 2
    assert_equal 2, noodles.amount, "Set Dinner amount method failed"
  end

  def test_dinner_total_cost
    eggroll = Dinner.new("eggroll", 5, 0.65)
    assert_equal 3.25, eggroll.total_cost, "Total cost method failed"
  end
end
