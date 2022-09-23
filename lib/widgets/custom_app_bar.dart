import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

AppBar customAppBar(BuildContext context, String title, bool isLogo) {
  return AppBar(
    toolbarHeight: 70,
    backgroundColor: backgroundColor,
    elevation: 0,
    leading: isLogo
        ? const Image(
            image: AssetImage(
              'images/icones/logo_simples.png',
            ),
            fit: BoxFit.contain,
          )
        : null,
    title: RichText(
      text: TextSpan(
        text: '$title\n',
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: 'Flutterando Masterclass',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Image(
          image: AssetImage('images/icones/moon.png'),
        ),
      )
    ],
  );
}
