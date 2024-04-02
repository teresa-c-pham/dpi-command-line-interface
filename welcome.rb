require 'time'

def welcome
  pp "Welcome to Miso Restaurant's Employee Portal!"
  pp "Today is #{Time.now().strftime "%d/%m/%Y %H:%M"}"
  pp "How can I help you today?"
  pp "1. Clock in/out for work."
  pp "2. Take a guest order."
  pp "3. Update Inventory."
  pp "4. Exit."
end

welcome
