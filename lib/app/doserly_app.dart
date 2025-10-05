import 'package:flutter/material.dart';

import '../ui/design_system/themes/doserly_theme.dart';
import '../ui/design_system/tokens/doserly_colors.dart';

class DoserlyApp extends StatelessWidget {
  const DoserlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doserly',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: DoserlyTheme.light(),
      darkTheme: DoserlyTheme.dark(),
      home: const _AppPreviewShell(),
    );
  }
}

class _AppPreviewShell extends StatelessWidget {
  const _AppPreviewShell();

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<DoserlyColorPalette>();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              (palette?.primary ?? const Color(0xFF6B4BFF)).withOpacity(0.35),
              Colors.black,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Doserly',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Personalized medication, supplement, and wellness intelligence.',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(height: 1.4),
                ),
                const Spacer(),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: const [
                    _PreviewPill(label: 'Medication tracking'),
                    _PreviewPill(label: 'AI side-effect insights'),
                    _PreviewPill(label: 'Supabase real-time sync'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PreviewPill extends StatelessWidget {
  const _PreviewPill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<DoserlyColorPalette>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: LinearGradient(
          colors: [
            (palette?.accentCyan ?? const Color(0xFF3CE3FF)).withOpacity(0.32),
            (palette?.accentLime ?? const Color(0xFFB7FF4A)).withOpacity(0.18),
          ],
        ),
        border: Border.all(
          color: (palette?.outlineGlow ?? Colors.white.withOpacity(0.15)),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
