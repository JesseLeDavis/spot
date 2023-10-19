import 'package:flutter/material.dart';

class Pallete {
  const Pallete({
    required this.light,
    required this.normal,
    required this.dark,
  });
  final Color light;
  final Color normal;
  final Color dark;
}

abstract class ColorThemes {
  // ======= GENERIC ========
  static const Color pureWhite = Color(0xFFFFFFFF);
  static const Color spotsBlack = Color(0xFF1D202B);
  // ======= NEUTRAL ========
  static const Color lightGrey = Color(0xFFF0EFF1);
  static const Color darkGrey = Color(0xFF3A3D4A);
  // ======= PRIMARY ========
  static const Color primary = Color(0xFF8017FF);
  static const Color secondaryText = Color(0xFFACA4B6);
  // ======= UTILITY ========
  static const Color success = Color(0xFF00C165);
  static const Color alert = Color(0xFFDC2626);
  static const Color warning = Color(0xFFFB923C);
}

extension ColorExtension on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1, 'amount has to be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1, 'amount has to be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  bool get isDark {
    final hsl = HSLColor.fromColor(this);
    return hsl.lightness < .5;
  }
}
