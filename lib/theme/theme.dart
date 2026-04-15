import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,
    secondary: Colors.grey.shade200,
    tertiary: Colors.grey.shade100,
    onPrimary: Colors.white,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    secondary: Colors.grey.shade800,
    tertiary: Colors.grey.shade700,
    onPrimary: Colors.black,
  ),
);

//riverpod themeProvider
final themeProvider = StateProvider<ThemeData>((ref) {
  return lightMode;
});
