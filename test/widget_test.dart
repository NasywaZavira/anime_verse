// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:anime_verse/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App shows sign in screen on startup', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Welcome Back!'), findsOneWidget);
    expect(find.text('Sign in to continue your anime journey'), findsOneWidget);
  });
}
