import 'package:flutter/material.dart';
import 'package:neumorphism/config/colors.dart';
import 'package:neumorphism/config/styles.dart';

final appLightTheme = ThemeData(
  primaryColor: primary,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    backgroundColor: Colors.transparent,
    titleTextStyle: Styles.appBarText,
  ),
  iconTheme: IconThemeData(color: primary),
  colorScheme: ColorScheme.light(
    primary: primary,
    secondary: secondary,
    error: danger,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: primary.withOpacity(0.7),
    unselectedItemColor: secondary.withOpacity(0.32),
    selectedIconTheme: IconThemeData(color: primary),
    showUnselectedLabels: true,
  ),
);
