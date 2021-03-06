import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio_messaging/widgets/ChatAppBar.dart';

void main() {
   const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: const ChatAppBar(),
    ),
  );

  testWidgets('ChatAppBar UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Moise Momo Ndiaye'), findsOneWidget);
    expect(find.text('@moisemomo'), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}