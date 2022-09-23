import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData isDark() {
  return ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF055AA3),

    highlightColor: const Color(0xFFEDF4F8),
    backgroundColor: const Color(0xFF121517),
    cardColor: const Color(0xFF172026),
    primaryColorDark: Color(0xffffff),
    //textSelectionColor: const Color(0xFF51565A),

    // Define the default font family.
    fontFamily: 'Poppins',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700),
      headline2: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700),
      bodyText1:
          GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.normal),
      headline6:
          GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.normal),
    ),
  );
}

const backgroundColor = Color(0xFF121517);
const cardColor = Color(0xff172026);
const textColor = Color(0xff51565A);
const primaryColor = Color(0xff055AA3);
