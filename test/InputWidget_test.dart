import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:messio_messaging/widgets/InputWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: InputWidget(),
    ),
  );

  testWidgets('Input Widget UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(IconButton), findsNWidgets(2));
    expect(find.byType(EditableText), findsOneWidget);
  });
}