import 'dart:async';
import 'package:test/test.dart';
import '../bank.dart';

void main() {
  group('BankAccount tests', () {
    test('Deposit and withdraw', () {
      var account = BankAccount(123456, "John Doe", 1000.0);

      account.deposit(200.0);
      expect(account.balance, equals(1200.0));
      expect(capturePrint(() => account.displayAccountInfo()), contains('Balance: \$1200.0'));

      account.withdraw(50.0);
      expect(account.balance, equals(1150.0));
      expect(capturePrint(() => account.displayAccountInfo()), contains('Balance: \$1150.0'));
    });

    test('Withdraw with insufficient funds', () {
      var account = BankAccount(789012, "Jane Smith", 500.0);

      account.withdraw(700.0);
      expect(account.balance, equals(500.0));
    });

    test('Calculate interest', () {
      var account = BankAccount(345678, "Bob Johnson", 1500.0);

      account.calculateInterest(5.0);
      expect(capturePrint(() => account.displayAccountInfo()), contains('Balance: \$1575.0'));
    });
  });
}

String capturePrint(void Function() testFn) {
  var outputBuffer = StringBuffer();
  withPrint(() => testFn(), (line) {
    outputBuffer.write(line);
    outputBuffer.write('\n');
  });
  return outputBuffer.toString();
}

void withPrint(void Function() body, void Function(String) onPrint) {
  var spec = ZoneSpecification(
    print: (self, parent, zone, message) {
      onPrint(message);
    },
  );
  runZoned(body, zoneSpecification: spec);
}
