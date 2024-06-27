# Ruby Command-Line Employee Portal

Hello! Welcome to the Ruby Command-line Employee Portal. <br>
This application uses the following versions:
* Ruby version: `3.2.1` 
* GitHub

## Getting Started

To get started, go onto [GitHub](https://github.com/) and make an account. Then, create a fork of the 
[dpi-command-line-interface](https://github.com/teresa-c-pham/dpi-command-line-interface) repository and open the code in your personal codespace. <br>
 <u>Note:</u> GitHub offers free codespaces to use, especially for small applications like this! <br> <br>

 Then, enter into the terminal the following command: `ruby welcome.rb`. This will start the main file `welcome.rb` and run the application.

## Sample Tutorial

Here is a sample tutorial on how the application works and its output.


## Application Components

The application consists of the following components:
* README.md - Overview of the application components and project
* welcome.rb - Main Ruby file to run the application
* tests folder - Tests classes required and used in **welcome.rb** using `minitest/autorun`
* Employees.rb - **Employees** Class to identify all employees working at the restaurant. Employees are each identified using the **Employee** Class which contains employee's name, worker ID, status of working, and when they clocked in for work
* Inventory.rb - **Inventory** Class to identify food items on lunch menu and on dinner menu. Each food item is identified using the **Item** Class which contains the item name, cost, and amount in stock
* Order.rb - **Order** Class to identify customer's food order which contains the customer's name and items ordered
