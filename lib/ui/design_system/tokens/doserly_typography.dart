import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'doserly_colors.dart';

class DoserlyTypography {
  const DoserlyTypography._();

  static TextTheme dark(DoserlyColorPalette palette) {
    final base = ThemeData(brightness: Brightness.dark).textTheme;
    return _apply(base, palette, isDark: true);
  }

  static TextTheme light(DoserlyColorPalette palette) {
    final base = ThemeData(brightness: Brightness.light).textTheme;
    return _apply(base, palette, isDark: false);
  }

  static TextTheme _apply(TextTheme base, DoserlyColorPalette palette,
      {required bool isDark}) {
    final displayFamily = GoogleFonts.sora().fontFamily;
    final bodyFamily = GoogleFonts.inter().fontFamily;

    Color primaryText() => palette.textPrimary;
    Color secondaryText() => palette.textSecondary;
    Color tertiaryText() => palette.textTertiary;

    return base.copyWith(
      displayLarge: TextStyle(
        fontFamily: displayFamily,
        fontWeight: FontWeight.w700,
        fontSize: 56,
        height: 1.1,
        letterSpacing: -1.0,
        color: primaryText(),
      ),
      displayMedium: TextStyle(
        fontFamily: displayFamily,
        fontWeight: FontWeight.w700,
        fontSize: 40,
        height: 1.1,
        letterSpacing: -0.6,
        color: primaryText(),
      ),
      displaySmall: TextStyle(
        fontFamily: displayFamily,
        fontWeight: FontWeight.w600,
        fontSize: 32,
        height: 1.1,
        letterSpacing: -0.4,
        color: primaryText(),
      ),
      headlineLarge: TextStyle(
        fontFamily: displayFamily,
        fontWeight: FontWeight.w600,
        fontSize: 28,
        height: 1.15,
        color: primaryText(),
      ),
      headlineMedium: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        height: 1.2,
        color: primaryText(),
      ),
      headlineSmall: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1.25,
        letterSpacing: 0.1,
        color: primaryText(),
      ),
      titleLarge: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        height: 1.3,
        color: primaryText(),
        letterSpacing: 0.1,
      ),
      titleMedium: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.35,
        letterSpacing: 0.15,
        color: secondaryText(),
      ),
      titleSmall: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.4,
        letterSpacing: 0.4,
        color: secondaryText(),
      ),
      bodyLarge: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 0.2,
        color: secondaryText(),
      ),
      bodyMedium: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.5,
        letterSpacing: 0.25,
        color: secondaryText(),
      ),
      bodySmall: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.45,
        letterSpacing: 0.4,
        color: tertiaryText(),
      ),
      labelLarge: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.2,
        letterSpacing: 0.5,
        color: primaryText(),
      ),
      labelMedium: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.2,
        letterSpacing: 0.6,
        color: tertiaryText(),
      ),
      labelSmall: TextStyle(
        fontFamily: bodyFamily,
        fontWeight: FontWeight.w600,
        fontSize: 11,
        height: 1.2,
        letterSpacing: 1.2,
        color: isDark ? palette.accentCyan : palette.primary,
      ),
    );
  }
}
