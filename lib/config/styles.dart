import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphism/config/colors.dart';


class Styles {
  static const appBarText = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: white,
  );
  static const appBarSubText = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
    color: white,
  );

  static TextStyle okunmaSayisi = GoogleFonts.getFont(
    'Rubik',
    fontSize: 25,
    color: primary,
  );

  static TextStyle okunmaSayisiAlt = GoogleFonts.getFont(
    'Rubik',
    fontSize: 10,
    color: secondary,
  );

  static const buttonTextStyle = TextStyle(
    fontSize: 12,
    //color: primary,
    fontWeight: FontWeight.w800,
  );

  static const chartLabelsTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );

  static const tabTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: secondary,
  );

  static const subTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: primary,
  );

  static TextStyle buttonText = GoogleFonts.getFont(
    'Rubik',
    fontSize: 25,
    color: secondary,
  );

  static BoxDecoration appBarboxDecoration = BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/yazma.png'),
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
    ),
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(70),
      bottomRight: Radius.circular(0),
    ),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.1, 0.4, 0.7, 0.9],
      colors: [
        Color(0xFF3594DD),
        Color(0xFF4563DB),
        Color(0xFF5036D5),
        Color(0xFF5B16D0),
      ],
    ),
  );

  static BoxDecoration bottomBarboxDecoration = BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.1, 0.2, 0.3, 0.1],
      colors: [
        Color(0xFF3594DD).withOpacity(.5),
        Color(0xFF4563DB).withOpacity(.5),
        Color(0xFF5036D5).withOpacity(.5),
        Color(0xFF5B16D0).withOpacity(.5),
      ],
    ),
  );
}

TextStyle readingText(double size, FontWeight bold, Color color) {
  var style = TextStyle(
    fontSize: size ?? 15.0,
    fontWeight: bold ?? FontWeight.w600,
    color: color ?? primary,
  );
  return style;
}
