In this challenge, you will create a simple banking application using classes. Inside the provided `BankAccount` class, add the following properties and methods:

Properties:
- `accountNumber` (int)
- `accountHolder` (String)
- `_balance` (double)

Note: `_balance` is a private variable. You will need to add this getter method:

```dart
get balance => _balance;
```

Methods:

- `double deposit(double amount)`: Adds the specified amount to the balance. Returns the updated balance.
- `double withdraw(double amount)`: Subtracts the specified amount from the balance. Returns the updated balance.
- `void displayAccountInfo()`: Prints the account information (account number, account holder, and balance) in the following format:
  - Account Number: 1234567
  - Account Holder: John Smith
  - Balance: 1000.0
- `void calculateInterest(double rate)`: Calculates and adds interest to the account. This method must call `deposit` with the updated value after the interest calculation.


After setting up the class, do the following inside your `main` function:

1. Create an instance of the `BankAccount` class.
2. Initialize it with an account number, account holder's name, and an initial balance of 1000.0.
3. Deposit 200.0 using the `deposit` method.
4. Withdraw 50.0 using the `withdraw` method.
5. Display the account information using the `displayAccountInfo` method after the deposit and withdraw steps.
6. Add an interest of 5% using the `calculateInterest` method.
7. Display the account information using the `displayAccountInfo` method after the interest calculation step.
