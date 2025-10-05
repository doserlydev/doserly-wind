import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/shell/presentation/preview_shell_page.dart';
import '../../features/medication/presentation/medication_tracking_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: PreviewShellPage.routePath,
    routes: [
      GoRoute(
        path: PreviewShellPage.routePath,
        name: PreviewShellPage.routeName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: PreviewShellPage(),
        ),
      ),
      GoRoute(
        path: MedicationTrackingPage.routePath,
        name: MedicationTrackingPage.routeName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: MedicationTrackingPage(),
        ),
      ),
    ],
    debugLogDiagnostics: false,
  );

  ref.onDispose(router.dispose);
  return router;
});
