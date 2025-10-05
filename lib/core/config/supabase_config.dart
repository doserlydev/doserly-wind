import 'package:flutter/foundation.dart';

@immutable
class SupabaseConfig {
  const SupabaseConfig({
    required this.url,
    required this.anonKey,
    this.serviceRoleKey,
  });

  factory SupabaseConfig.empty() => const SupabaseConfig(url: '', anonKey: '');

  final String url;
  final String anonKey;
  final String? serviceRoleKey;

  bool get isValid => url.isNotEmpty && anonKey.isNotEmpty;
}
