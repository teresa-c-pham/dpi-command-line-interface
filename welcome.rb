require 'time'
require './order.rb'
require './inventory.rb'

class Welcome
  attr_accessor :items     # list of items for sale
  attr_accessor :orders    # list of customer orders taken
  attr_accessor :inventory # class of menu items for lunch/dinner
  attr_accessor :current_time

  def initialize
    # Create Inventory of menu items for lunch and dinner
    lunch = [Item.new("Firecracker Shrimp", 6, 3.50), Item.new("Calamari", 10, 5.25)]
    dinner = [Item.new("crab rangoon", 5, 3.00), Item.new("Miso", 10, 5.25)]

    self.inventory = Inventory.new(lunch, dinner)

    # List available menu items for designated time: Lunch/Dinner
    dinner_time = Time.parse "3:00 pm"

    # Set default menu as dinner
    self.current_time = "dinner"

    if Time.now < dinner_time
      puts "It is now lunch"
      self.items = inventory.lunch_items
      self.current_time = "lunch"
    else
      self.items = inventory.dinner_items
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

  # For Employee Use: alter menu item quantity and/or cost
  def update_inventory
    puts "Enter Inventory Item Name:"
    item = gets.chomp

    # Make sure item name follows proper format
    name = item.downcase.capitalize

    item_found = false # check if item exists in inventory
    old_cost = 0.0
    old_amount = 0

    # Find old cost and amount
    self.items.each do |item|
      if item.name == name
        old_cost = item.cost
        old_amount = item.amount
        item_found = true
      end
    end

    # If Inventory item does not exist, add to inventory
    if !(item_found)
      puts "New Cost:"
      cost = gets.chomp.to_f

      puts "New Amount:"
      amount = gets.chomp.to_i

      # Add new inventory item to items list
      if current_time == "lunch"
        self.inventory.add_lunch(Item.new(name, amount, cost))
      else
        self.inventory.add_dinner(Item.new(name, amount, cost))
      end
    else
      # Inventory item does exist, update only
      puts "1. Change Cost"
      puts "2. Change Amount"
      option = gets.chomp

      case option
      when "1"
        # Update item cost
        puts "New Cost:"
        cost = gets.chomp.to_f
        self.inventory.update_item(item, old_amount, cost)
      when "2"
        # Update item amount
        puts "New Amount:"
        amount = gets.chomp.to_i
        self.inventory.update_item(item, amount, old_cost)
      end
    end
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
