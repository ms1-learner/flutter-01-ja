In this challenge, you'll practice inheritance, abstraction, encapsulation, and polymorphism in Dart. 

**Step 1**: Create a base class named `ElectronicDevice` with the following properties and methods:

Properties:
- `brand` (String): Represents the brand of the electronic device.
- `power` (bool): Represents whether the device is powered on or off.

Methods:
- `void turnOn()`: Turns on the electronic device.
- `void turnOff()`: Turns off the electronic device.
- `displayStatus()`: An abstract method that will be implemented by the subclasses.


**Step 2**: Implement `TV` and `Laptop` subclasses of the `ElectronicDevice` class:

`TV` Properties:
- `screenSize` (double) - Represents the size of the television screen.

`Laptop` Properties:
- `batteryPercentage` (double) - Represents the battery percentage of the laptop.

**Step 3**: Ensure that the properties of the `ElectronicDevice`, `TV`, and `Laptop` classes are encapsulated properly, using getter methods to access properties.

**Step 4**: Create a list of `ElectronicDevice` objects that includes both televisions and laptops.
Iterate over the list and call the `displayStatus` method for each device.