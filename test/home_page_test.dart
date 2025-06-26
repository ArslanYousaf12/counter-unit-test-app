import 'package:counter_unit_test_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Given counter is 0 when increment button is pressed then counter should be 1',
    (tester) async {
      // Arrange
      await tester.pumpWidget(
        MaterialApp(home: const MyHomePage(title: 'Counter Test')),
      );
      final ctr = find.text("0");
      expect(ctr, findsOneWidget);

      final ctr1 = find.text("1");
      expect(ctr1, findsNothing);

      final incrementButton = find.byType(FloatingActionButton);
      await tester.tap(incrementButton);
      await tester.pump();

      expect(find.text("1"), findsOneWidget);
      expect(find.text("0"), findsNothing);
    },
  );
}
