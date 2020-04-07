require_relative '../config/environment'



# code here

chase = Bank.new("Chase", "Denver")
cap_one = Bank.new("Cap One", "Denver")
credit_union = Bank.new("Credit Untion", "Denver")

bob = Customer.new("Bob", 50)
schmoe = Customer.new("Schmoe", 30)
john = Customer.new("John", 17)

act1 = Account.new("8458595", 500, chase, bob, 2019)
act2 = Account.new("1212", 5000, chase, schmoe)
act3 = Account.new("2429", 12000, cap_one, bob)
act4 = Account.new("999983", 100000, credit_union, john, 2005)
act5 = Account.new("5238756", 16000, credit_union, bob)
act6 = Account.new("34254", 90000, chase, bob)
act7 = Account.new("553563", 83325, cap_one, john)


# bob.new_account(20000, 44444444, cap_one)
binding.pry