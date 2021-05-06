import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphism/config/colors.dart';

class Styles {
  static TextStyle appBarText = GoogleFonts.getFont(
    'Rubik',
    fontWeight: FontWeight.w600,
    color: black,
  );

  static const appBarSubText = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
    color: white,
  );

  static TextStyle puanSayisi = GoogleFonts.getFont(
    'Rubik',
    fontSize: 25,
    color: black,
  );
  static TextStyle yorumSayisi = GoogleFonts.getFont(
    'Rubik',
    fontSize: 25,
    color: grey,
  );

  static TextStyle yemekAdi = GoogleFonts.getFont(
    'Rubik',
    fontSize: 25,
    color: black,
  );

  static TextStyle yemekAciklama = GoogleFonts.getFont(
    'Rubik',
    fontSize: 25,
    color: grey,
  );

  static TextStyle buttonTextStyle = GoogleFonts.getFont(
    'Rubik',
    fontSize: 16,
    color: white,
    backgroundColor: primary,
    //fontWeight: FontWeight.w800,
  );

  static TextStyle yemekFiyat = GoogleFonts.getFont(
    'Rubik',
    fontSize: 16,
    color: primary,
    fontWeight: FontWeight.w800,
  );

  static TextStyle yemekSayiCart = GoogleFonts.getFont(
    'Rubik',
    fontSize: 16,
    color: black,
    //backgroundColor: primary,
    fontWeight: FontWeight.w800,
  );

  static TextStyle yemekAdiCart = GoogleFonts.getFont(
    'Rubik',
    fontSize: 16,
    color: black,
    //backgroundColor: primary,
    fontWeight: FontWeight.w800,
  );

  static TextStyle yemekKaloriCart = GoogleFonts.getFont(
    'Rubik',
    fontSize: 16,
    color: grey,
    //backgroundColor: primary,
    fontWeight: FontWeight.w800,
  );

  static TextStyle yemekToplamFiyatCart = GoogleFonts.getFont(
    'Rubik',
    fontSize: 16,
    color: black,
    //backgroundColor: primary,
    fontWeight: FontWeight.w800,
  );

  static TextStyle yemekToplamCart = GoogleFonts.getFont(
    'Rubik',
    fontSize: 14,
    color: black,
    //backgroundColor: primary,
    fontWeight: FontWeight.w600,
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
