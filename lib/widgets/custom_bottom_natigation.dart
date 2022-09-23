import 'package:app_masterclass_flutterando/pages/about_page/about_dev_page.dart';
import 'package:app_masterclass_flutterando/pages/home_page/home_page.dart';
import 'package:app_masterclass_flutterando/pages/repositories/repositories_page.dart';
import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

Widget customBottomNavigation(BuildContext context) {
  final appState = context.findAncestorStateOfType<MyAppState>();

  return Container(
    padding: const EdgeInsets.all(10),
    height: 70,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: Column(
            children: [
              Icon(
                Icons.track_changes,
                color: Theme.of(context).highlightColor,
              ),
              const SizedBox(height: 5),
              Text(
                'Atividades',
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: 1,
          color: textColor,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const RepositoriesPage(),
              ),
            );
          },
          child: Column(
            children: [
              appState?.themeMode == ThemeMode.dark
                  ? const Image(
                      image: AssetImage('images/icones/github.png'),
                    )
                  : const Image(
                      image:
                          AssetImage('images/icones/Icon awesome-github.png'),
                    ),
              const SizedBox(height: 7),
              Text(
                'Repositorios',
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: 1,
          color: textColor,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const AboutPage(),
              ),
            );
          },
          child: Column(
            children: [
              Icon(
                Icons.person,
                color: Theme.of(context).highlightColor,
                size: 27,
              ),
              const SizedBox(height: 5),
              Text(
                'Sobre o dev',
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
