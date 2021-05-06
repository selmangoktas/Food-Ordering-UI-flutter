import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neumorphism/theme/light.dart';

class ThemeState extends GetxController {
  Locale locale = Get.deviceLocale.toString() == 'en'
      ? Locale('en', 'US')
      : Locale('tr', 'TR');

  ThemeData currentTheme = appLightTheme;

  Future<ThemeData> changeTheme(ThemeData themeData) async {
    currentTheme = themeData;
    Get.changeTheme(currentTheme);
    update();
    return themeData;
  }

  Future<Locale> changeLocale(Locale newLocale) async {
    locale = newLocale;
    Get.locale = newLocale;
    update();
    return locale;
  }
}
