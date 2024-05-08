import 'package:flutter/material.dart';

class ThemeCuston {
  static ThemeData themeLight = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white
      )
    )
  );
}