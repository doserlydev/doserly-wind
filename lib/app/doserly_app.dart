import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/routing/app_router.dart';
import '../ui/design_system/themes/doserly_theme.dart';

class DoserlyApp extends ConsumerWidget {
  const DoserlyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Doserly',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: DoserlyTheme.light(),
      darkTheme: DoserlyTheme.dark(),
      routerConfig: router,
    );
  }
}
