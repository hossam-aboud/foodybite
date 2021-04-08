import 'package:flutter/material.dart';

import '../values/theme.dart';

enum ThemeType { light, dark }

class ThemeProvider with ChangeNotifier {
  ThemeType _themeType = ThemeType.light;
  ThemeData currentTheme = lightTheme;

  void convertTheme() {
    if (_themeType == ThemeType.light) {
      _themeType = ThemeType.dark;
      currentTheme = darkTheme;
      return notifyListeners();
    } else if (_themeType == ThemeType.dark) {
      _themeType = ThemeType.light;
      currentTheme = lightTheme;
      return notifyListeners();
    }
  }
}
