require 'time'
require './order.rb'
require './inventory.rb'

class Welcome
  attr_accessor :items

  def initialize
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]

    # List available menu items for designated time: Lunch/Dinner
    dinner_time = Time.parse "3:00 pm"
    if Time.now < dinner_time
      self.items = lunch
    else
      self.items = dinner
    end
  end
  # TODO
  # clock_in
  # clock_out
  # take_order
  # clock_in employee through Employees class
  # function to display guest's order

  def clock_in
    puts "Enter your Employee ID:"
    id = gets.chomp
    puts "Employee #{id} has clocked in."
  end

  def clock_out
    puts "Enter your Employee ID:"
    id = gets.chomp
    puts "Employee #{id} has clocked out."
  end

  def take_order
    puts "Guest Name:"
    name = gets.chomp
    order = Order.new(name)

    puts "What would you like to order?"
    option = ""
    while option != "0"
      count = 1
      self.items.each do |item|
        puts "#{count}. #{item.name} : #{item.cost}"
        count += 1
      end
      option = gets.chomp
      if option != "0" && option.to_i < self.items.length
        order.add_item(self.items[option.to_i - 1])
      end

      puts "Your order:"
      order.items.each do |item|
        puts "#{item.name} : #{item.cost}"
      end
    end
  end

  def update_inventory
    puts "Enter Inventory Item Name:"
    item = gets.chomp
  end


  def welcome
    puts "Welcome to Miso Restaurant's Employee Portal!"
    puts "Today is #{Time.now().strftime "%d/%m/%Y %H:%M"}"
    puts "How can I help you today?"
    puts "1. Clock in for work."
    puts "2. Clock out for work."
    puts "3. Take a guest order."
    puts "4. Update Inventory."
    puts "5. Exit."

    input = gets.chomp
    while input
      case input
      when "1"
        clock_in
      when "2"
        clock_out
      when "3"
        take_order
      when "4"
        update_inventory
      when "5"
        puts "Good bye!"
        exit!
      else
        puts "Wrong input. Please select a valid option"
      end

      # Repeat the welcome screen prompt
      puts ""
      puts "Welcome to Miso Restaurant's Employee Portal!"
      puts "Today is #{Time.now().strftime "%d/%m/%Y %H:%M"}"
      puts "How can I help you today?"
      puts "1. Clock in for work."
      puts "2. Clock out for work."
      puts "3. Take a guest order."
      puts "4. Update Inventory."
      puts "5. Exit."
      input = gets.chomp
    end
  end
end

start = Welcome.new
start.welcome
