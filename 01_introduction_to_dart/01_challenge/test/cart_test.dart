import 'package:test/test.dart';
import 'package:test_process/test_process.dart';

void main() {
  test('Total Price Calculation', () async {
    final testProcess = await TestProcess.start('dart', ['cart.dart']);

    await expectLater(
      testProcess.stdout,
      emitsThrough(contains("The total after-tax price of all the items you have is: \$46.19")),
    );

    await testProcess.shouldExit(0);
  });
}
