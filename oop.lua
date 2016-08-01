Account = {balance = 0}

function Account.withdraw (self, v)
    self.balance = self.balance - v
end

function Account.deposit(self, v)
    self.balance = self.balance + v
end

print(Account)
print(Account.balance)

a1 = Account;
print(a1.balance)
a1.withdraw(a1, 100.00)
print(a1.balance)
print(Account.balance)


a2 = {
    balance = 0,
    withdraw = Account.withdraw,
    deposit = Account.deposit
}
print(a2.balance)
print(Account.balance)

a2.deposit(a2, 100.00) -- we have to pass in the object we are operating on because we are using "."
print(a2.balance)
a2:withdraw(50.50) -- we no longer need to pass in the object since we are using ":"
print(a2.balance)

