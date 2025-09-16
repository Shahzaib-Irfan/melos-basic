import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_components/ui_components.dart';

void main() {
  testWidgets('AppButton shows label and calls onPressed',
      (WidgetTester tester) async {
    bool pressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: AppButton(
          label: 'Submit',
          onPressed: () {
            pressed = true;
          },
        ),
      ),
    );

    expect(find.text('Submit'), findsOneWidget);

    await tester.tap(find.byType(AppButton));
    await tester.pump();

    expect(pressed, true);
  });
}
