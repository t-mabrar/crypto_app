import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0B52E1),
      onPrimary: Color(0xFF0B52E1),
      secondary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.transparent,
      onSurface: Colors.transparent,
    ),
    primaryColor: Color(0xFF0B52E1),
    scaffoldBackgroundColor: Color(0xFFFDFDFD),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 26.0),
    ),
    textTheme: AppUtils.textTheme(),
  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0B52E1),
      onPrimary: Color(0xFF0B52E1),
      secondary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.transparent,
      onSurface: Colors.transparent,
    ),
    primaryColor: Color(0xFF0B52E1),
    scaffoldBackgroundColor: Color(0xFFFDFDFD),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: 26.0),
    ),
    textTheme: AppUtils.textTheme(),
  );
}
