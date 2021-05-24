import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio_messaging/pages/ConversationPage.dart';
import 'package:messio_messaging/pages/ConversationPageList.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: const ConversationPageList()
    ),
  );

  testWidgets('ConversationList Ui test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
  });
}