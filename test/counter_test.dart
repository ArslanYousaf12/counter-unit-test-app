import 'package:counter_unit_test_app/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Counter counter;
  // pretest like init state
  // pretest
  setUp(() => counter = Counter());
  //setup > test > setup > test
  // setUpAll(() => null);
  // setupAll >  test > test

  // post test like dispose state
  // tearDown(() {});
  //  test > tearDown > test > tearDown
  // tearDownAll(() => null);
  //  test > test > tearDownAll

  // test cases

  group("Counter class -", () {
    test(
      'Given counter class when it is instantiated then value of count should be 0',
      () {
        // Arrange
        // final counter = Counter();

        // Act
        final count = counter.count;

        // Assert
        expect(count, 0);
      },
    );
    test(
      "given the counter class when it is incremented then value of count should be one",
      () {
        // Arrange
        // final counter = Counter();

        // Act
        counter.increment();
        final count = counter.count;

        // Assert
        expect(count, 1);
      },
    );
    test(
      "given the counter class when it is decremented then value of count should be -1",
      () {
        // Arrange
        // final counter = Counter();

        // Act
        counter.decrement();
        final count = counter.count;

        // Assert
        expect(count, -1);
      },
    );
  });
  // Given when then pattern
}
