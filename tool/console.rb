require_relative '../config/environment'



# code here
cap_one = Bank.new("Capital One", "Denver")
first = Bank.new("First Bank", "Denver")
chase = Bank.new("Chase", "Denver")

john = Customer.new("John Smith", 35)
bob = Customer.new("Bob Jones", 73)
desiree = Customer.new("Desiree Sun", 21)

ba1 = BankAccount.new("4178", 9000.94, cap_one, john)
ba2 = BankAccount.new("7898", 5000.67, cap_one, bob)
ba3 = BankAccount.new("9778", 1029.38, chase, john)
ba4 = BankAccount.new("8797", 10786.56, first, desiree)



binding.pry
0