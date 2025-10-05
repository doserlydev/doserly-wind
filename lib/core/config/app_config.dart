import 'package:flutter/foundation.dart';

import 'supabase_config.dart';

enum AppFlavor { dev, staging, production }

extension AppFlavorX on AppFlavor {
  static AppFlavor parse(String value) {
    final normalized = value.toLowerCase().trim();
    switch (normalized) {
      case 'prod':
      case 'production':
        return AppFlavor.production;
      case 'staging':
        return AppFlavor.staging;
      case 'dev':
      case 'development':
      default:
        return AppFlavor.dev;
    }
  }

  String get name {
    switch (this) {
      case AppFlavor.dev:
        return 'dev';
      case AppFlavor.staging:
        return 'staging';
      case AppFlavor.production:
        return 'production';
    }
  }
}

@immutable
class AppConfig {
  const AppConfig({
    required this.flavor,
    required this.supabase,
    this.enableCrashReporting = false,
    this.enableAnalytics = false,
  });

  factory AppConfig.placeholder() => AppConfig(
        flavor: AppFlavor.dev,
        supabase: SupabaseConfig.empty(),
      );

  factory AppConfig.fromEnvironment() {
    const flavorValue = String.fromEnvironment('APP_FLAVOR', defaultValue: 'dev');
    const supabaseUrl = String.fromEnvironment('SUPABASE_URL');
    const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');
    const supabaseServiceRole = String.fromEnvironment('SUPABASE_SERVICE_ROLE_KEY');
    const analyticsEnabled = bool.fromEnvironment('ENABLE_ANALYTICS');
    const crashEnabled = bool.fromEnvironment('ENABLE_CRASH_REPORTING');

    final flavor = AppFlavorX.parse(flavorValue);

    return AppConfig(
      flavor: flavor,
      supabase: SupabaseConfig(
        url: supabaseUrl,
        anonKey: supabaseAnonKey,
        serviceRoleKey:
            supabaseServiceRole.isEmpty ? null : supabaseServiceRole,
      ),
      enableAnalytics: analyticsEnabled,
      enableCrashReporting: crashEnabled,
    );
  }

  final AppFlavor flavor;
  final SupabaseConfig supabase;
  final bool enableCrashReporting;
  final bool enableAnalytics;

  bool get isProduction => flavor == AppFlavor.production;
  bool get isStaging => flavor == AppFlavor.staging;
  bool get isDev => flavor == AppFlavor.dev;
}
