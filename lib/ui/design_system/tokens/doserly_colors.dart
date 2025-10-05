import 'package:flutter/material.dart';

@immutable
class DoserlyColorPalette extends ThemeExtension<DoserlyColorPalette> {
  const DoserlyColorPalette({
    required this.background,
    required this.surface,
    required this.surfaceAlt,
    required this.glassOverlay,
    required this.primary,
    required this.primarySoft,
    required this.accentCyan,
    required this.accentLime,
    required this.accentSunset,
    required this.outlineGlow,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
  });

  final Color background;
  final Color surface;
  final Color surfaceAlt;
  final Color glassOverlay;
  final Color primary;
  final Color primarySoft;
  final Color accentCyan;
  final Color accentLime;
  final Color accentSunset;
  final Color outlineGlow;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;

  factory DoserlyColorPalette.dark() => const DoserlyColorPalette(
        background: Color(0xFF05060C),
        surface: Color(0xFF0C1018),
        surfaceAlt: Color(0xFF11131C),
        glassOverlay: Color(0x33FFFFFF),
        primary: Color(0xFF9D5BFF),
        primarySoft: Color(0xFF4B3CFF),
        accentCyan: Color(0xFF3CE3FF),
        accentLime: Color(0xFFB7FF4A),
        accentSunset: Color(0xFFFF6B6B),
        outlineGlow: Color(0x663CE3FF),
        textPrimary: Color(0xFFF5F7FF),
        textSecondary: Color(0xFFB6BCD4),
        textTertiary: Color(0xFF7E869F),
      );

  factory DoserlyColorPalette.light() => const DoserlyColorPalette(
        background: Color(0xFFF5F4FF),
        surface: Color(0xFFFFFFFF),
        surfaceAlt: Color(0xFFF0EEFF),
        glassOverlay: Color(0x1A0B0D17),
        primary: Color(0xFF6B4BFF),
        primarySoft: Color(0xFFD7CEFF),
        accentCyan: Color(0xFF2CB8D6),
        accentLime: Color(0xFF7FD82C),
        accentSunset: Color(0xFFFF7B54),
        outlineGlow: Color(0x332CB8D6),
        textPrimary: Color(0xFF141624),
        textSecondary: Color(0xFF3D4153),
        textTertiary: Color(0xFF6B6F83),
      );

  @override
  DoserlyColorPalette copyWith({
    Color? background,
    Color? surface,
    Color? surfaceAlt,
    Color? glassOverlay,
    Color? primary,
    Color? primarySoft,
    Color? accentCyan,
    Color? accentLime,
    Color? accentSunset,
    Color? outlineGlow,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
  }) {
    return DoserlyColorPalette(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceAlt: surfaceAlt ?? this.surfaceAlt,
      glassOverlay: glassOverlay ?? this.glassOverlay,
      primary: primary ?? this.primary,
      primarySoft: primarySoft ?? this.primarySoft,
      accentCyan: accentCyan ?? this.accentCyan,
      accentLime: accentLime ?? this.accentLime,
      accentSunset: accentSunset ?? this.accentSunset,
      outlineGlow: outlineGlow ?? this.outlineGlow,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
    );
  }

  @override
  DoserlyColorPalette lerp(ThemeExtension<DoserlyColorPalette>? other, double t) {
    if (other is! DoserlyColorPalette) {
      return this;
    }

    return DoserlyColorPalette(
      background: Color.lerp(background, other.background, t) ?? background,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      surfaceAlt: Color.lerp(surfaceAlt, other.surfaceAlt, t) ?? surfaceAlt,
      glassOverlay: Color.lerp(glassOverlay, other.glassOverlay, t) ?? glassOverlay,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      primarySoft: Color.lerp(primarySoft, other.primarySoft, t) ?? primarySoft,
      accentCyan: Color.lerp(accentCyan, other.accentCyan, t) ?? accentCyan,
      accentLime: Color.lerp(accentLime, other.accentLime, t) ?? accentLime,
      accentSunset: Color.lerp(accentSunset, other.accentSunset, t) ?? accentSunset,
      outlineGlow: Color.lerp(outlineGlow, other.outlineGlow, t) ?? outlineGlow,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t) ?? textTertiary,
    );
  }
}
