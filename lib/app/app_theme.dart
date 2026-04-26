import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color background = Color(0xFFF3DEC8);
  static const Color card = Color(0xFFFFF7EF);
  static const Color orange = Color(0xFFE88B5C);
  static const Color lightOrange = Color(0xFFF6C48F);
  static const Color darkBrown = Color(0xFF3A241C);
  static const Color softBrown = Color(0xFF7A5544);

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: orange,
        brightness: Brightness.light,
      ),
      textTheme: GoogleFonts.pressStart2pTextTheme().apply(
        bodyColor: darkBrown,
        displayColor: darkBrown,
      ),
      useMaterial3: true,
    );
  }
}