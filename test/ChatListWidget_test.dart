import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio_messaging/main.dart';

void main() {

  testWidgets('ChatList UI test', (WidgetTester tester) async {
    await tester.pumpWidget(Messio());

    expect(find.byType(ListView), findsOneWidget);
  });
}