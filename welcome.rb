require 'time'

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

welcome
