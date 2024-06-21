require 'time'
require './order.rb'
require './inventory.rb'

class Welcome
  attr_accessor :items    # list of items for sale
  attr_accessor :orders   # list of customer orders taken

  def initialize
    # List of available menu items for lunch and dinner
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]

    # List available menu items for designated time: Lunch/Dinner
    dinner_time = Time.parse "3:00 pm"
    if Time.now < dinner_time
      self.items = lunch
    else
      self.items = dinner
    end

    # Create an empty map to contain all orders
    self.orders = Hash.new
  end
  
  # TODO
  # clock_in
  # clock_out
  # clock_in employee through Employees class

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

  # Function to take a customer's order
  # Assume all customers have a unique name
  def take_order
    # Take customer's name for order
    puts "Guest Name:"
    name = gets.chomp
    order = Order.new(name)

    # Prompt customer to select menu items
    puts "What would you like to order?"
    option = ""
    while option != "0"
      count = 1
      self.items.each do |item|
        puts "#{count}. #{item.name} : #{item.cost}"
        count += 1
      end

      # Set 9 to remove last ordered item
      puts "9. Remove Last Item"

      # Set 0 to finalize order and return to main menu
      puts "0. End Order"

      option = gets.chomp
      if option == "9"
        if self.items.length != 0
          order.remove_item
        end
      elsif option != "0" && option.to_i < self.items.length+1
        order.add_item(self.items[option.to_i - 1])
      end

      # List order contents
      puts "Your order:"
      order.items.each do |item|
        puts "#{item.name} : #{item.cost}"
      end
      puts ""
    end

    # Output final cost of order
    puts "Your total is: $#{order.total_cost}."

    # Add order to orders list
    self.orders[name] = order
  end

  # Function to view previous orders
  def review_order
    option = ""

    while option != "0"
      counter = 1

      # List Orders by Customer Name
      puts "Orders by Customer Name:"
      self.orders.each do |name, orders|
        puts "#{counter}. #{name}"
        counter += 1
      end
      puts "0. Return to Main Menu"
      puts ""

      # Accept input from User to select name or return to main menu
      option = gets.chomp

      # Output customer's order and total cost
      if option != "0" && option.to_i < self.items.length+1
        puts "Order:"
        self.orders.values[option.to_i-1].items.each do |item|
          puts "#{item.name} : #{item.cost}"
        end
        puts "Total cost: $#{self.orders.values[option.to_i-1].total_cost}"
        puts ""
      end
    end
  end

  # For Employee Use: alter menu item name, quantity, and/or cost
  def update_inventory
    puts "Enter Inventory Item Name:"
    item = gets.chomp
  end


  # Main function to run the application
  def welcome
    # Welcome message and main menu options
    puts "Welcome to Miso Restaurant's Employee Portal!"
    puts "Today is #{Time.now().strftime "%d/%m/%Y %H:%M"}"
    puts "How can I help you today?"
    puts "1. Clock in for work."
    puts "2. Clock out for work."
    puts "3. Take a guest order."
    puts "4. Review Orders"
    puts "5. Update Inventory."
    puts "6. Exit."

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
        review_order
      when "5"
        update_inventory
      when "6"
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
      puts "4. Review Orders"
      puts "5. Update Inventory."
      puts "6. Exit."
      input = gets.chomp
    end
  end
end

# Instantiate and start the application
start = Welcome.new
start.welcome
