import 'package:test/test.dart';

// Assuming your original code is in 'main.dart' or adjust the import accordingly
import '../calculator.dart';

void main() {
  group('convert', () {
    test('correctly adds two numbers', () {
      var val1 = 10;
      var val2 = 3;
      var operator = "+";

      var result = calculator(operator)(val1, val2);

      expect(result, equals(13));
    });
    test('correctly subtracts two numbers', () {
      var val1 = 10;
      var val2 = 3;
      var operator = "-";

      var result = calculator(operator)(val1, val2);

      expect(result, equals(7));
    });
    test('correctly multiplies two numbers', () {
      var val1 = 10;
      var val2 = 3;
      var operator = "*";

      var result = calculator(operator)(val1, val2);

      expect(result, equals(30));
    });
    test('correctly divides two numbers', () {
      var val1 = 10;
      var val2 = 4;
      var operator = "/";

      var result = calculator(operator)(val1, val2);

      expect(result, equals(2.5));
    });
    test('correctly integer-divides two numbers', () {
      var val1 = 10;
      var val2 = 4;
      var operator = "~/";

      var result = calculator(operator)(val1, val2);

      expect(result, equals(2));
    });
    test('correctly find the modulus of dividing 1 number by the other', () {
      var val1 = 10;
      var val2 = 3;
      var operator = "%";

      var result = calculator(operator)(val1, val2);

      expect(result, equals(1));
    });
    test('throws an error on zero-based division', () {
      var val1 = 10;
      var val2 = 0;
      var operator = "/";

      var result = calculator(operator)(val1, val2);
      expect(result.runtimeType, equals(String));
    });
    test('throws an error on zero-based integer division', () {
      var val1 = 10;
      var val2 = 0;
      var operator = "~/";

      var result = calculator(operator)(val1, val2);
      expect(result.runtimeType, equals(String));
    });
  });
}
