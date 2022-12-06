import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blueGrey;

  static final ThemeData themeDataLight = ThemeData.light().copyWith(
      primaryColor: Colors.grey,
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.green, elevation: 0));
}
