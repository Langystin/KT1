import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';  // Импортируем MyApp

void main() {
  testWidgets('MyApp has a title', (WidgetTester tester) async {
    // Строим виджет MyApp
    await tester.pumpWidget(MyApp());

    // Проверяем, что приложение отображает правильный текст
    expect(find.text('Flutter Demo'), findsOneWidget);
  });
}
