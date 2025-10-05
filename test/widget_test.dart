// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:doserly/app/doserly_app.dart';
import 'package:doserly/core/config/app_config.dart';
import 'package:doserly/core/config/supabase_config.dart';
import 'package:doserly/core/providers/app_providers.dart';

void main() {
  testWidgets('DoserlyApp renders preview shell', (WidgetTester tester) async {
    const config = AppConfig(
      flavor: AppFlavor.dev,
      supabase: SupabaseConfig(url: '', anonKey: ''),
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          appConfigProvider.overrideWithValue(config),
          supabaseClientProvider.overrideWithValue(null),
        ],
        child: const DoserlyApp(),
      ),
    );

    expect(find.text('Doserly'), findsOneWidget);
    expect(
      find.textContaining('Personalized medication'),
      findsOneWidget,
    );
    expect(find.byType(Chip), findsNothing);
    expect(find.text('Medication tracking'), findsOneWidget);
  });
}
