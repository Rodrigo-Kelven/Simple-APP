import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: false,
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),

    iconTheme: const IconThemeData(
      color: Colors.white,
    ),

    dividerColor: Colors.white24,
  );
}