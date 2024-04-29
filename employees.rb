# Collection of all Employees
class Employees
  attr_accessor :employees

  def initialize
    boss = Employee.new("Boss", 001)
    self.employees = Array.new(1, boss)
  end

  # Add an employee to the database
  def add_employee(name, id)
    employee = Employee.new(name, id)
    if !(check_employee_exists(id))
      self.employees.push(employee)
      puts "#{name} ##{id} added to the database."
    else
      puts "Employee #{id} already exists in the database."
    end
  end

  # Remove an employee from the database
  def del_employee(id)
    index = self.employees.find_index { |element| element.id == id }
    if index == "nil"
      puts "Invalid employee id."
    else
      name = self.employees[index].name
      self.employees.delete_at(index)
      puts "Successfully removed #{name} ##{id}."
    end
  end

  # Helper Functions

  # Check if Item exists in Array
  def check_employee_exists(id)
    self.employees.each do |element|
    return true if element.id == id
    end
    return false
  end

end


# Employee Class
class Employee
  attr_accessor :name
  attr_accessor :id
  attr_accessor :status

  def initialize(name, id)
    self.name = name
    self.id = id
    self.status = "not working"
  end

  def name=(value)
    # Check to see if name is a string
    unless value.is_a?(String)
      raise TypeError, 'Employee name must be a string'
    end

    @name = value.downcase.capitalize
  end
  
  def id=(value)
    # Check to see if name is a string
    unless value.is_a?(Integer)
      raise TypeError, 'ID must be of an Integer'
    end

    @id = value
  end

  def status=(value)
    # Check to see if status is a string
    unless value.is_a?(String)
      raise TypeError, 'Employee status must be a string'
    end

    @status = value.downcase
  end

  def clock_in
    if self.status == "working"
      puts "#{self.name} has already clocked in."
    else
      self.status = "working"
      puts "#{self.name} is now clocked in."
    end
  end

  def clock_out
    if self.status == "not working"
      puts "#{self.name} has already clocked out."
    else
      self.status = "not working"
      puts "#{self.name} is now clocked out."
    end
  end
end
