import 'package:flutter/material.dart';

import '../../../ui/design_system/tokens/doserly_colors.dart';

class PreviewShellPage extends StatelessWidget {
  const PreviewShellPage({super.key});

  static const routePath = '/';
  static const routeName = 'preview';

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<DoserlyColorPalette>();
    final gradientStart =
        (palette?.primary ?? const Color(0xFF6B4BFF)).withValues(alpha: 0.35);
    final gradientEnd = Colors.black.withValues(alpha: 1);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              gradientStart,
              gradientEnd,
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
    final accentCyan =
        (palette?.accentCyan ?? const Color(0xFF3CE3FF)).withValues(alpha: 0.32);
    final accentLime =
        (palette?.accentLime ?? const Color(0xFFB7FF4A)).withValues(alpha: 0.18);
    final borderColor =
        (palette?.outlineGlow ?? Colors.white).withValues(alpha: 0.15);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: LinearGradient(
          colors: [
            accentCyan,
            accentLime,
          ],
        ),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
