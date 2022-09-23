import 'package:app_masterclass_flutterando/main.dart';
import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

AppBar customAppBar(BuildContext context, String title, bool isLogo) {
  final appState = context.findAncestorStateOfType<MyAppState>();
  return AppBar(
    toolbarHeight: 70,
    backgroundColor: Theme.of(context).backgroundColor,
    elevation: 0,
    leading: isLogo
        ? const Image(
            image: AssetImage(
              'images/icones/logo.png',
            ),
            fit: BoxFit.contain,
          )
        : null,
    title: RichText(
      text: TextSpan(
        text: '$title\n',
        style: Theme.of(context).textTheme.headline1,
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
        onPressed: () {
          appState?.switchTheme();
        },
        icon: appState?.themeMode == ThemeMode.dark
            ? const Image(
                image: AssetImage('images/icones/moon.png'),
              )
            : const Image(
                image: AssetImage('images/icones/Icon awesome-moon.png'),
              ),
      ),
    ],
  );
}
