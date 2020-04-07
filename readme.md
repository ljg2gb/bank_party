# Many to Many in Ruby

## Objectives
1. Define a many to many relationship.
1. Demonstrate building a many to many relationship in Ruby.

---

#### Warmup
1. Come up with some real world examples of a many to many relationship. 
1. Try to think of something that connects these two things. Note: the connection between them should be one to many!!!!

`What does this look like drawn out?`

##### Let's Do It
Let's use what we know about one to many relationships to create 2 one-to-many relationships.

- Work with your buddy to create a one to many relationship (just one of them).

- We'll create the second one-to-many together.


That's it!!! We've now created a many-to-many relationship. 

What can we do with this? 

How can we go `through` our 'join model' to utilize our relationships?

---
#### Deliverables

Slack to me:
1. When using a many-to-many relationship, which model/class holds the information to make the relationship work? In other words, which model _knows_ about the other models?
1. Pretend you have a many to many relationship set up between `dogs` and `parks` so the join model is `dog_parks`. Give an example of how you would instantiate a new `dog_park` instance.


Customer has many banks, Bank has many customers
Account belongs to a bank and a customer


**How to add a Gemfile!** 
- pry
- require_all

## Account Model
attributes: number, open_year=2020, balance, customer, bank

#### Getting Practice

You already have your class method .all (Account.all, AccountHolder.all, Bank.all) as well as methods to read all the attributes of instances in those classes. Use those to help you build out the following methods:

1. Customer#accounts
   - Make a method on the `customer` class that returns an array of all accounts that belong to the specific customer.

1. Customer#banks
   - Make a method that returns a `uniq` array of all the bank names an customer has.

1. Bank#accounts
   - Method should return all accounts that belong to the specified bank.

1. Bank#customers
    - Method should return an array of all customers of the specified bank.

1. Customer#new_account(number, balance, bank)
    - Takes in 3 arguments, the account number, balance, and bank object and will create a new account associated with the customer instance the method was called on.


1. Bank#new_account(number, balance, customer)
    - Takes in 3 arguments, the account number, balance, and customer object and will create a new account associated with the bank instance the method was called on.

1. Bank#oldest_account
    - Method returns the oldest account associated with the specified bank.

1. Bank.most_customers
    - *(note the dot instead of the `#` symbol above. What does that indicate?)*
    Method should return the bank object that has the most customers.
    *For an extra challenge, have this method also return the number of customers.
    "________ Bank has _____ customers."

1. Customer.average_number_of_accounts
    - Method should return the average number of accounts all customers have.

1. Bank.customer_count
    - Method should return a hash where each name of the bank is the key and the values are the number of customers the bank has.

1. Bank#average_customer_age
    - Method should return the average age of all customers for a specific bank.

1. Bank.most_branches
    - Should return the bank with the most number of branches.


#### More Practice
- OO My Pets
- OO Kickstarter
- OO Flatiron Mifflin
- OO Animal Zoo