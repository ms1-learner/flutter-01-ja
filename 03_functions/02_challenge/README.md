# Challenge 2

In this challenge, your task is to create a simple calculator that depends on the concept of Higher-order and nested functions in Dart. There is a pre-defined `calculator` function that takes in one parameter. This parameter represents the mathematical operation to perform. `calculator` returns an anonymous function that takes two parameters, the numbers, to process the calculation.

Allowed parameters are:

- +: For addition. 
- -: For subtraction. 
- *: For multiplication. 
- /: For fractional division. 
- ~/: For integer division. 
- %: For modulus.

Edge cases to handle:

If an unrecognized operator is provided as a parameter, the function should return an error message, such as "Unknown operator."
If the denominator of the fractional or integer division equals zero, the function should return an error message, such as "Can't divide by zero!".

Examples of the expected functionality:

```dart
calculator("+")(10, 30); // 40
calculator("/")(40, 2); // 20
calculator("%")(23, 12); // 11
```