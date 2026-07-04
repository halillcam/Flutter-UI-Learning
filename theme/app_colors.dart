import 'dart:ui';

class AppColors {
  // burada ui daki widgetların ve text lerin renklerini tutuyoruz

  AppColors._(); // private constructor anlamı : bu classtan nesne üretilemez.
  // tanımlı tüm değişkenler sabit olduğu için normal constructor a gerek duymuyoruz.

  static const Color primary = Color(0xFF3D5CFF);
  static const Color secondary = Color(0xFFFF9D3D);

  static const Color background = Color(0xFFFAFAFA);
  static const Color backgroundDark = Color(0xFF121212);

  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6E6E6E);

  static const Color error = Color(0xFFE53935);
}
