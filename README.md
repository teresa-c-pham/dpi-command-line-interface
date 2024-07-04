# Ruby Command-Line Employee Portal

Welcome to the Ruby Command-line project called **Miso's Restaurant Employee Portal**! <br>
This application uses the following versions:
* Ruby version: `3.2.1` 
* GitHub

# Getting Started

To get started, go onto [GitHub](https://github.com/) and make an account. Then, create a fork of the 
[dpi-command-line-interface](https://github.com/teresa-c-pham/dpi-command-line-interface) repository and open the code in your personal codespace. <br>
 <u>Note:</u> GitHub offers free codespaces to use, especially for small applications like this! <br> <br>

 Then, enter into the terminal the following command: `ruby welcome.rb`. This will start the main file `welcome.rb` and run the application. <br>
 <u>Note</u>: Make sure the terminal is located in the project's working directory.

# Sample Tutorial
Hello! Welcome to Miso Restaurant's Employee Portal! As an employee here, we highly recommend learning how to navigate through the portal to take customers' orders and clock in/out for work. For this sample tutorial, your ID will be `3` and name will be `Jane Doe`. Enjoy! <br>

## Step 1 - Clock In
Proceed by running `ruby welcome.rb` in the terminal. This will return the following output in the terminal window:

```
Welcome to Miso Restaurant's Employee Portal!
Today is 30/06/2024 23:22
How can I help you today?
1. Clock in for work.
2. Clock out for work.
3. Take a guest order.
4. Review Orders
5. Update Inventory
6. Exit.
```
Line 2 tells us the current date in DD/MM/YYYY format and current time in 24-hour format. Note that the current date and time may differ depending on when this tutorial is run.<br>

6 menu options are available for us to select from. Let's begin by clocking in for work by typing the following command in the terminal: `1`. Typing in this command returns the following:
```
Enter your Employee ID:
```
Then, type in your ID and press enter: `3`.
```
Jane doe is now clocked in.

Welcome to Miso Restaurant's Employee Portal!
Today is 30/06/2024 23:32
How can I help you today?
1. Clock in for work.
2. Clock out for work.
3. Take a guest order.
4. Review Orders
5. Update Inventory.
6. Exit.
```
Now that we have clocked in for work. Let's proceed with our first customer's order. <br>
<u>Note</u>: For this tutorial, step 2 is split into two sections, lunch and dinner. If the current time is before 15:00, proceed to the lunch section. Else, proceed to the dinner section.

## Step 2 - Lunch
To place an order, enter into the command-line the following: `3`.
```
Guest Name:
```
This will prompt you to input the guest's name. Let's suppose the guest's name is John Kramer and type that into the terminal: `John Kramer`.
```
What would you like to order?
1. Firecracker shrimp : 3.5
2. Calamari : 5.25
3. Combination fried rice : 7.75
9. Remove Last Item
0. End Order
```

John wants three orders of calamari and two orders of combination fried rice. Begin by typing `2` into the terminal followed by enter.
```
Your order:
Calamari : 5.25

What would you like to order?
1. Firecracker shrimp : 3.5
2. Calamari : 5.25
3. Combination fried rice : 7.75
9. Remove Last Item
0. End Order
```
Currently, our order has one instance of calamari. Repeat the process two more times to record three orders of calamari.

```
Your order:
Calamari : 5.25
Calamari : 5.25
Calamari : 5.25

What would you like to order?
1. Firecracker shrimp : 3.5
2. Calamari : 5.25
3. Combination fried rice : 7.75
9. Remove Last Item
0. End Order
```

Now repeat the process for the two orders of combination fried rice.
```
Your order:
Calamari : 5.25
Calamari : 5.25
Calamari : 5.25
Combination fried rice : 7.75
Combination fried rice : 7.75

What would you like to order?
1. Firecracker shrimp : 3.5
2. Calamari : 5.25
3. Combination fried rice : 7.75
9. Remove Last Item
0. End Order
```

After ordering, John decided one order of rice was enough. Let's go back and remove the last instance of combination fried rice by typing `9` in the terminal.

```
Your order:
Calamari : 5.25
Calamari : 5.25
Calamari : 5.25
Combination fried rice : 7.75

What would you like to order?
1. Firecracker shrimp : 3.5
2. Calamari : 5.25
3. Combination fried rice : 7.75
9. Remove Last Item
0. End Order
```

Now John's order is complete! Enter `0` to complete the order.

```
Your order:
Calamari : 5.25
Calamari : 5.25
Calamari : 5.25
Combination fried rice : 7.75

Your total is: $23.5.

Welcome to Miso Restaurant's Employee Portal!
Today is 30/06/2024 23:42
How can I help you today?
1. Clock in for work.
2. Clock out for work.
3. Take a guest order.
4. Review Orders
5. Update Inventory.
6. Exit.
```

The order contents can be confirmed to be 3 orders of calamari and 1 order of combination fried rice followed by their total combined cost: $23.50. Congratulations! You just completed your first order!

## Step 2 - Dinner

To place an order, enter into the command-line the following: `3`.

```
Guest Name:
```

This will prompt you to input the guest's name. Let's suppose the guest's name is John Kramer and type that into the terminal: `John Kramer`.

```
What would you like to order?
1. Crab rangoon : 3.0
2. Miso : 5.25
9. Remove Last Item
0. End Order
```

John wants two orders of miso soup and three orders of crab rangoon. Begin by typing `1` into the terminal followed by enter.

```
Your order:
Crab rangoon : 3.0

1. Crab rangoon : 3.0
2. Miso : 5.25
9. Remove Last Item
0. End Order
```

Currently, our order has one instance of crab rangoon. Repeat the process two more times to record three orders of crab rangoon.

```
Your order:
Crab rangoon : 3.0
Crab rangoon : 3.0
Crab rangoon : 3.0

1. Crab rangoon : 3.0
2. Miso : 5.25
9. Remove Last Item
0. End Order
```

Now repeat the process for the two orders of miso soup.

```
Your order:
Crab rangoon : 3.0
Crab rangoon : 3.0
Crab rangoon : 3.0
Miso : 5.25
Miso : 5.25

1. Crab rangoon : 3.0
2. Miso : 5.25
9. Remove Last Item
0. End Order
```

Now enter `0` to complete the order.

```
Your order:
Crab rangoon : 3.0
Crab rangoon : 3.0
Crab rangoon : 3.0
Miso : 5.25
Miso : 5.25

Your total is: $19.5.

Welcome to Miso Restaurant's Employee Portal!
Today is 30/06/2024 23:42
How can I help you today?
1. Clock in for work.
2. Clock out for work.
3. Take a guest order.
4. Review Orders
5. Update Inventory.
6. Exit.
```

The order contents can be confirmed to be 3 orders of crab rangoon and 2 orders of miso soup followed by their total combined cost: $19.50. Congratulations! You just completed your first order!

## Step 3 - Review Order

Now that we have taken a guest's order. Let's review the order details again. Type `4` in the command-line to review our list of orders.

```
Orders by Customer Name:
1. John Kramer
0. Return to Main Menu
```

Enter `1` to select John Kramer from our list.<br>
<u>Note</u>: The following output assumes it is currently dinner-time.

```
Order:
Crab rangoon : 3.0
Crab rangoon : 3.0
Crab rangoon : 3.0
Miso : 5.25
Miso : 5.25
Total cost: $19.5

Orders by Customer Name:
1. John Kramer
0. Return to Main Menu
```

Now that we have confirmed John Kramer's order is accurate, let's go back to the main menu by typing `0` in the terminal.

## Step 4 - Update Inventory

For management, the **Update Inventory** menu option is available to change any item's quantity in stock and cost per item. Let's suppose the restaurant came up with a new menu item called **French Fries** for $3.50 an order. <br>
To begin, type `5` in the terminal.

```
Enter Inventory Item Name:
```

Now, let's type `French Fries` as our new menu item in the terminal.

```
New Cost:
```

Then, add the new cost `3.50` for the menu item.

```
New Amount:
```

Suppose, we have 50 available orders of french fries in stock. Type `50` in the terminal. If no errors appear, entering this amount will return is to the main menu. Now, let's review the changes by taking a guest's order using option `3`.
```
Guest Name:
John Doe

What would you like to order?
1. Firecracker shrimp : 3.5
2. Calamari : 5.25
3. Combination fried rice : 7.75
4. French fries : 3.5
9. Remove Last Item
0. End Order
```

Now the new menu item **French fries** is ready to order! Press `0` to end the order.


## Step 5 - Clock Out
After a long day's work, it is time to clock out. Type `2` in the terminal to clock out for work.
```
Enter your Employee ID:
```
Similar to clocking in, enter your employee ID into the terminal: `3`.
```
Jane doe is now clocked out.
Jane doe has worked for 0:5

Welcome to Miso Restaurant's Employee Portal!
Today is 30/06/2024 23:59
How can I help you today?
1. Clock in for work.
2. Clock out for work.
3. Take a guest order.
4. Review Orders
5. Update Inventory.
6. Exit.
```
The portal will inform you that you have now clocked out and for how long you've worked for tax purposes. Now that you are done with work, type `6` to exit the employee portal. Thank you for participating!
```
Good bye!
```


# Application Components

The main application consists of the following components:
* welcome.rb - Main Ruby file to run the application
* Employees.rb - **Employees** Class to identify all employees working at the restaurant. Employees are each identified using the **Employee** Class which contains employee's name, worker ID, status of working, and when they clocked in for work
* Inventory.rb - **Inventory** Class to identify food items on lunch menu and on dinner menu. Each food item is identified using the **Item** Class which contains the item name, cost, and amount in stock
* Order.rb - **Order** Class to identify customer's food order which contains the customer's name and items ordered

## welcome.rb


## Employees.rb
The Employees.rb file consists of two classes: Employees and Employee. <br>

The Employee Class contains four class variables: the employee name `name`, worker ID `id`, whether they are currently working or not `status`, and the time they clocked in for work `clock_time`.

* Each employee can be clocked in and out of the system using `employee.clock_in` and `employee.clock_out` respectively. Each clock status outputs a different message to the terminal depending if the employee has already clocked in/out or not.

The Employees Class contains only one class variable: an array of employees working for the restaurant `employees`.

* To add employees to the database, `employees.add_employee` is called with two parameters: name and id. A helper function `check_employee_exists(id)` is used to verify whether the employee already exists in the database and to avoid redundancy in the code. 
* Removing employees in the database uses the method `employees.del_employee(id)`, however, instead of using the custom helper function, the built in function `array.find_index` is used to effectively find the first index of the id in our array.

* To clock in a specific employee, their worker ID is requested using `gets.chomp` and the `employees.clock_in` method calls the clock_in method from employee to confirm the employee's working status. To clock out a specific employee uses the same process except calls `employees.clock_out` instead.

## Inventory.rb
The Inventory.rb file consists of two classes: Item and Inventory. <br>

The Item Class contains three class variables: the item name `name`, the item's unit cost `cost`, and the amount currently in stock `amount`.

* `Item.total_cost` is a method used to return the total cost of the amount currently in stock times the unit cost. This is especially useful to estimate if current sales for a particular item is generating profit for a business.

The Inventory Class contains two class variables: an array of items for sale during lunch hours `lunch_items`, and an array of items for sale during dinner hours `dinner_items`. Each array contains items which are instantiated using `Item.new()`.

* To add a lunch menu item, `Inventory.add_lunch(item)`, the array method `array.push` is used to append the item to the `lunch_items` array.
* Similarly, adding a dinner menu item calls `Inventory.add_dinner(item)` which uses `array.push` to append the item to the `dinner_items` array.
<u>Note</u>: Both of the methods mentioned above utilize `Inventory.check_item_in_list(item, array)` as a helper function to efficiently find if an item already exists in the array in O(N) time.
* To update an item's current amount in stock and/or unit price, `Inventory.update_item(item_name, amount, cost)` is used to search for the menu item in both the lunch_items array and the dinner_items array. Because each array is checked separately, changing elements in one array does not impact the other array.

## Order.rb
The Order.rb file consists of one class: Order.

The Order Class contains two class variables: the customer's name `name`, and the array of items the customer has ordered `items`.

* An item can be added to an order using `order.add_item(item)` which calls the array method `array.append` to add the item to the `items` array.
* Similarly, an item is removed using `order.remove_item` which calls the array method `array.pop` to remove the last item from the `items` array.

<u>Note</u>: This implementation can only remove the last item added to an order. In addition, if an order is empty, no changes are made to avoid errors.
* To calculate the final cost, `order.total_cost` is used to traverse through the entire order and sum up the cost in O(N) time.


# Testing
Each class used in **welcome.rb** is tested under the tests folder using `minitest/autorun`. Assuming we are still in the project's working directory, each of the four ruby test files can be run using `ruby /tests/...` followed by the name of the test file.
For example, `test_employees.rb` can be run using `ruby tests/test_employees.rb` which generates the following output:
```
Run options: --seed 24782

# Running:

..Successfully removed John doe #141.
..John doe is now clocked in.
.Jane doe is now clocked in.
Jane doe is now clocked out.
Jane doe has worked for 0:0
.

Finished in 0.002118s, 2833.1782 runs/s, 2833.1782 assertions/s.

6 runs, 6 assertions, 0 failures, 0 errors, 0 skips
```
