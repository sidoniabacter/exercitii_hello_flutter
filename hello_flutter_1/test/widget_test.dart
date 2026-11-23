// Un test de widget: pornește aplicația într-un mediu de test și verifică ce apare pe ecran.
// Se rulează cu `flutter test`.

import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter_1/main.dart' as app;

/// Rulează testele aplicației.
void main() {
  testWidgets('Afișează textul Bacter Sidonia - Salomeea', (WidgetTester tester) async {
    // Pornește aplicația și desenează primul cadru.
    app.main();
    await tester.pump();

    expect(find.text('Bacter Sidonia - Salomeea'), findsOneWidget);
  });
}
