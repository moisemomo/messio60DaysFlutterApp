import 'package:flutter_test/flutter_test.dart';
import 'package:messio_messaging/main.dart';
import 'package:messio_messaging/pages/ConversationPageList.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(Messio());

    expect(find.byType(ConversationPageList), findsOneWidget);
  });
}