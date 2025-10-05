import 'package:flutter/material.dart';

import '../tokens/doserly_colors.dart';
import '../tokens/doserly_typography.dart';

class DoserlyTheme {
  const DoserlyTheme._();

  static ThemeData dark() => _theme(brightness: Brightness.dark);

  static ThemeData light() => _theme(brightness: Brightness.light);

  static ThemeData _theme({required Brightness brightness}) {
    final palette = brightness == Brightness.dark
        ? DoserlyColorPalette.dark()
        : DoserlyColorPalette.light();

    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: palette.primary,
      onPrimary: brightness == Brightness.dark
          ? const Color(0xFF05060C)
          : const Color(0xFFFFFFFF),
      primaryContainer: palette.primarySoft,
      onPrimaryContainer: brightness == Brightness.dark
          ? palette.textPrimary
          : const Color(0xFF141624),
      secondary: palette.accentCyan,
      onSecondary: const Color(0xFF05060C),
      secondaryContainer: palette.accentCyan.withOpacity(0.12),
      onSecondaryContainer: palette.accentCyan,
      tertiary: palette.accentSunset,
      onTertiary: const Color(0xFFFFFFFF),
      tertiaryContainer: palette.accentSunset.withOpacity(0.18),
      onTertiaryContainer: palette.accentSunset,
      error: const Color(0xFFFF4D67),
      onError: const Color(0xFFFFFFFF),
      errorContainer: const Color(0xFFB3261E),
      onErrorContainer: const Color(0xFFFFFFFF),
      surface: palette.surface,
      onSurface: palette.textPrimary,
      surfaceVariant: palette.surfaceAlt,
      onSurfaceVariant: palette.textSecondary,
      outline: palette.outlineGlow,
      shadow: Colors.black.withOpacity(brightness == Brightness.dark ? 0.8 : 0.2),
      scrim: Colors.black.withOpacity(0.65),
      inverseSurface: brightness == Brightness.dark
          ? const Color(0xFFF2F2FF)
          : const Color(0xFF08090F),
      inversePrimary: palette.primarySoft,
      surfaceTint: palette.primary,
    );

    final textTheme = brightness == Brightness.dark
        ? DoserlyTypography.dark(palette)
        : DoserlyTypography.light(palette);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: palette.background,
      canvasColor: palette.background,
      dialogBackgroundColor: palette.surface,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      iconTheme: IconThemeData(color: palette.textSecondary),
      extensions: <ThemeExtension<dynamic>>[palette],
      appBarTheme: AppBarTheme(
        backgroundColor: palette.background,
        foregroundColor: palette.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: textTheme.titleLarge,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: palette.surface.withOpacity(0.8),
        indicatorColor: palette.accentCyan.withOpacity(0.25),
        labelTextStyle:
            MaterialStateProperty.all<TextStyle?>(textTheme.labelMedium),
        iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
          (states) {
            final active = states.contains(MaterialState.selected);
            return IconThemeData(
              color: active ? palette.accentCyan : palette.textSecondary,
            );
          },
        ),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: palette.surface,
        selectedIconTheme: IconThemeData(color: palette.accentCyan, size: 28),
        unselectedIconTheme:
            IconThemeData(color: palette.textSecondary, size: 24),
        selectedLabelTextStyle: textTheme.labelLarge,
        unselectedLabelTextStyle: textTheme.labelMedium,
      ),
      cardTheme: CardThemeData(
        color: palette.surface.withOpacity(0.9),
        elevation: 0,
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: palette.surfaceAlt.withOpacity(0.72),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: palette.outlineGlow.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: palette.accentCyan, width: 1.4),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        hintStyle: textTheme.bodyMedium?.copyWith(color: palette.textTertiary),
        labelStyle: textTheme.bodySmall,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: palette.surfaceAlt,
        selectedColor: palette.accentCyan.withOpacity(0.18),
        labelStyle: textTheme.labelMedium,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        side: BorderSide(color: palette.outlineGlow.withOpacity(0.2)),
      ),
      dividerTheme: DividerThemeData(
        color: palette.outlineGlow.withOpacity(0.35),
        space: 32,
        thickness: 1,
      ),
      listTileTheme: ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        iconColor: palette.textSecondary,
        textColor: palette.textPrimary,
        tileColor: palette.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: palette.accentLime,
        foregroundColor: const Color(0xFF05060C),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: palette.surfaceAlt,
        contentTextStyle: textTheme.bodyMedium,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all<Color>(
          palette.accentCyan.withOpacity(0.6),
        ),
        radius: const Radius.circular(999),
        thickness: MaterialStateProperty.all<double>(6),
      ),
    );
  }
}
