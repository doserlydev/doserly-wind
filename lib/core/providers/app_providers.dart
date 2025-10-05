import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../config/app_config.dart';

final appConfigProvider = Provider<AppConfig>((ref) => AppConfig.placeholder());

final supabaseClientProvider = Provider<SupabaseClient?>((ref) => null);
