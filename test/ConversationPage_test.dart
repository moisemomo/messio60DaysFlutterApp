import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio_messaging/pages/ConversationPage.dart';
import 'package:messio_messaging/widgets/ChatAppBar.dart';
import 'package:messio_messaging/widgets/ChatListWidget.dart';
import 'package:messio_messaging/widgets/InputWidget.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: const ConversationPage(),
    ),
  );

  testWidgets('Conversation UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}