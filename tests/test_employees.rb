require 'minitest/autorun'
require './employees.rb'

class TestEmployee < Minitest::Test
  def test_initialize
    employee = Employee.new("Teresa Pham", 12)
    assert_equal 12, employee.id, "Set Employee initialize method failed"
  end

  def test_clock_in
    employee = Employee.new("John Doe", 141)
    employee.clock_in
    assert_equal "working", employee.status, "Set Employee clock in failed"
  end

  def test_clock_out
    employee = Employee.new("Jane Doe", 777)
    employee.clock_in
    employee.clock_out
    assert_equal "not working", employee.status, "Set Employee clock in failed"
  end
end
