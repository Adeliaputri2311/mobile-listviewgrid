import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:t6_listviewgrid/main.dart';

void main() {
  testWidgets('home shows destination discovery and bottom navigation', (
    tester,
  ) async {
    await tester.pumpWidget(const WisataApp());

    expect(find.text('Hello, Traveler!'), findsOneWidget);
    expect(find.text('Popular Destinations'), findsOneWidget);
    expect(find.text('Explore'), findsOneWidget);
    expect(find.text('Favorite'), findsOneWidget);
  });

  testWidgets('search filters destinations by name', (tester) async {
    await tester.pumpWidget(const WisataApp());

    await tester.enterText(find.byType(TextField).first, 'Kelingking');
    await tester.pump();

    expect(find.text('Pantai Kelingking'), findsOneWidget);
    expect(find.text('Kawah Putih'), findsNothing);
  });

  testWidgets('favorite can be added and removed from the shared list', (
    tester,
  ) async {
    await tester.pumpWidget(const WisataApp());

    final saveButton = find.byTooltip('Simpan ke favorit').first;
    await tester.ensureVisible(saveButton);
    await tester.pumpAndSettle();
    await tester.tap(saveButton);
    await tester.pump();
    await tester.tap(find.text('Favorite').last);
    await tester.pumpAndSettle();

    expect(find.text('Pantai Kelingking'), findsOneWidget);
    final removeButton = find.byTooltip('Hapus dari favorit').first;
    await tester.ensureVisible(removeButton);
    await tester.pumpAndSettle();
    await tester.tap(removeButton);
    await tester.pumpAndSettle();

    expect(find.text('No favorites yet'), findsOneWidget);
  });
}
