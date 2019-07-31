// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_assignment_one/main.dart';

void main() {
  testWidgets('Mobile Assignment Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    final errorHandled = expectAsync0((){});

    FlutterError.onError = (errorDetails) {
      // handle error
      errorHandled();
    };

    //Entering TextFormField Username data
    await tester.enterText((find.byType(TextFormField)), 'username');
    //expect to find TextFormField Username value
    expect(find.text('username'), findsOneWidget);

    //Entering TextFormField Password data
    await tester.enterText((find.byType(TextFormField)), 'password');
    //expect to find TextFormField Password value
    expect(find.text('password'), findsOneWidget);

    //Tap to add button
    await tester.tap(find.byType(RaisedButton));
    expect(find.byType(RaisedButton), findsOneWidget);

    // Tap the '+' and '<-' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    expect(find.byIcon(Icons.add), findsOneWidget);
    await tester.tap(find.byIcon(Icons.arrow_back));
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);

    await tester.pump();

  });
}
