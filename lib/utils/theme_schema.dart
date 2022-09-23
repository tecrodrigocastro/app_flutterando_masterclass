import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeSchema {
  ThemeData isDark() {
    return ThemeData(
      primaryColor: const Color(0xff055aa3),
      highlightColor: const Color(0xffedf4f8),
      primaryColorDark: const Color(0xff055aa3),
      cardColor: const Color(0xff172026),
      backgroundColor: const Color(0xff121517),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        headline2: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        headline3: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
        bodyText1: GoogleFonts.montserrat(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
        bodyText2: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: const Color(0xff51565a),
        ),
      ),
    );
  }

  ThemeData isLigth() {
    return ThemeData(
      primaryColor: const Color(0xff055aa3),
      highlightColor: const Color(0xff172026),
      primaryColorLight: const Color(0xff055aa3),
      cardColor: const Color(0xffedf4f8),
      backgroundColor: const Color(0xffd6dfe4),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        headline2: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        headline3: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
        bodyText1: GoogleFonts.montserrat(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
        bodyText2: GoogleFonts.montserrat(
            fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}
