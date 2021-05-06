import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neumorphism/langs/translate.dart';
import 'package:neumorphism/splash.dart';
import 'package:neumorphism/theme/theme_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
    final ThemeState themeState = Get.put(ThemeState());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: themeState.locale,
      debugShowCheckedModeBanner: false,
      title: 'Food Ordering UI flutter',
       theme: themeState.currentTheme,
      home: MySplashApp(),
    );
  }
}
