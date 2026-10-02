import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:magic_8_ball/main.dart';

void main() {
  testWidgets('the ball is rendered and shaking it keeps the app stable',
      (WidgetTester tester) async {
    await tester.pumpWidget(const Magic8BallApp());

    expect(find.text('Magic 8 Ball'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    // "Shake" the ball — a new answer should still be an image.
    await tester.tap(find.byType(TextButton));
    await tester.pump();

    expect(find.byType(Image), findsOneWidget);
  });
}
