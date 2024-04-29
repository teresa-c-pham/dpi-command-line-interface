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

class TestEmployees < Minitest::Test
  def test_initialize
    employees = Employees.new
    assert_equal "Boss", employees.employees[0].name, "Initialize Employees array failed."
  end

  def test_add_employees
    employees = Employees.new()
    employees.add_employee("John Doe", 141)
    employees.add_employee("Jane Doe", 777)
    assert_equal 3, employees.employees.length, "Add Employees to array failed"
  end

  def test_del_employees
    employees = Employees.new()
    employees.add_employee("John Doe", 141)
    employees.add_employee("Jane Doe", 777)
    employees.del_employee(141)
    assert_equal 2, employees.employees.length, "Delete Employees from array failed"
  end

end
