import 'package:flutter_test/flutter_test.dart';

import 'package:book_club_app/main.dart';

void main() {
  testWidgets('Book Club home screen renders', (tester) async {
    await tester.pumpWidget(const BookClubRoot());
    await tester.pumpAndSettle();

    expect(find.text('Book Club Home'), findsOneWidget);
    expect(find.text('Books'), findsOneWidget);
    expect(find.text('Author'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
  });
}
