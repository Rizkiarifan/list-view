import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
  );
}
