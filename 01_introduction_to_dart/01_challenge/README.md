# Challenge 1

In this challenge, you're given a code file `cart.dart` that has a set of variables, each with pre-defined values. Each variable stores the price of an item in a grocery shop, as follows:

The apples and bananas prices are stored as integers. The values they hold are represented in cents (1 dollar = 100 cents).
```dart
  int apples = 250;
  int bananas = 152;
```
The parmesan cheese, chicken breasts, and milk are stored as strings. Parmesan cheese price is represented in cents while the other two are represented in dollars (notice the decimal).
```dart
  dynamic parmesanCheese = "1999";
  dynamic chickenBreasts = "15.99";
  dynamic milk = "1.99";
```

Your tasks are as follows:
- Convert each string that has a dot `"."` to a double using the appropriate `parse` method you learned in unit 1.
- Convert each string that doesn't have a dot `"."`  to an integer using the appropriate `parse` method you learned in unit 1.
- Calculate the total price of all items in cents. This means that you'll need to multiply any price that is represented in dollars by 100.
- Add 10 percent tax to the total price you calculated in the previous step.
- Convert the total after-tax price from cents to a dollar amount of the type `double` that is rounded to the nearest cent.
- Print a statement that reads "The total after-tax price of all the items you have is: $`X`" where `X` is the total price after tax.
