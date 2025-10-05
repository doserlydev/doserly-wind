import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/doserly_app.dart';
import 'core/config/app_config.dart';
import 'core/providers/app_providers.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  final config = AppConfig.fromEnvironment();
  SupabaseClient? supabaseClient;

  if (config.supabase.isValid) {
    await Supabase.initialize(
      url: config.supabase.url,
      anonKey: config.supabase.anonKey,
    );
    supabaseClient = Supabase.instance.client;
  } else {
    debugPrint(
      '⚠️ Supabase credentials missing. Provide SUPABASE_URL and SUPABASE_ANON_KEY via --dart-define.',
    );
  }

  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(config),
        supabaseClientProvider.overrideWithValue(supabaseClient),
      ],
      child: const DoserlyApp(),
    ),
  );
}
