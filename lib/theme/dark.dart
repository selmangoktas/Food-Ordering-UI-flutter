import 'package:flutter/material.dart';
import 'package:neumorphism/config/colors.dart';

final appDarkTheme = ThemeData(
  primaryColor: secondaryDark,
  scaffoldBackgroundColor: primaryDark,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    backgroundColor: bgAppbarDark,
  ),
  iconTheme: IconThemeData(color: white),
  textTheme: TextTheme(),
  colorScheme: ColorScheme.dark().copyWith(
    primary: accentDark,
    secondary: secondaryDark,
    error: danger,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: secondaryDark,
    selectedItemColor: exDark,
    unselectedItemColor: primaryDark.withOpacity(0.32),
    selectedIconTheme: IconThemeData(color: primaryDark),
    showUnselectedLabels: true,
  ),
);
