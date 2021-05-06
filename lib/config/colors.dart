import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

const Color primary = Color(0xff2dc879);
const Color medium = Color(0xff9A031E);
const Color secondary = Color(0xffFB8B24);
const Color accent = Color(0xFFE36414);
const Color ex = Color(0xFF0F4C5C);

//(0xffb48484)
//#b48484

const Color primaryDark = Color(0xff2B2D42);
const Color mediumDark = Color(0xff809bce);
const Color secondaryDark = Color(0xffdc965a);
const Color accentDark = Color(0xFF5b8266);
const Color exDark = Color(0xFF8d2663);

///const Color black = Color(0xff000000);
//const Color grey = Color(0xff515151);
//const Color white = Color(0xffffffff);
//const Color yellow = Color(0xFFEA9F5A);

const Color success = Color(0xff44c93a);
const Color danger = Color(0xffff4657);
const Color info = Color(0xff5bc0de);
const Color warning = Color(0xfffeba06);

const Color bgAppbarLight = Color(0xff5F0F40);
const Color bgAppbarDark = Color(0xff2B2D42);

const Color bgAppbarGradientStart = Color(0xFF191C20);
const Color bgAppbarGradientEnd = Color(0xFF29313E);

const Color bgButtonBlack = Color(0xFF17181A);
const Color bgButtonBlue = Color(0xFF3B66BE);
const Color bgButtonWhite = Color(0xffffffff);

const Color black = Color(0xff000000);
const Color white = Color(0xffffffff);
const Color blue = Color(0xff0D47A1);
const Color grey = Color(0xffbdbdbd);
const Color lineWhite = Color(0xffececec);
const Color lineGrey = Color(0xffbdbdbd);
const Color lineTextGrey = Color(0xff9E9E9E);

const Color darkModeButton = Color(0xff2F3641);
const Color lightModeButton = Color(0xff000000);
const Color darkBgCircle = Color(0xff2F3641);

const Color transparent = Colors.transparent;
