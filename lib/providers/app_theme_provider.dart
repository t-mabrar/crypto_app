import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  bool isDarkTheme = false;
  void updateTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
