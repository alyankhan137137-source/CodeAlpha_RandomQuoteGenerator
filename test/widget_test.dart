import 'package:flutter_test/flutter_test.dart';
import 'package:codealpha_randomquotegenerator/main.dart';

void main() {
  testWidgets('Random Quote App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the "New Quote" button is present.
    expect(find.text('New Quote'), findsOneWidget);
  });
}
