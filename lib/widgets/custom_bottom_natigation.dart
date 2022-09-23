import 'package:app_masterclass_flutterando/pages/about_page/about_dev_page.dart';
import 'package:app_masterclass_flutterando/pages/details_page/details_page.dart';
import 'package:app_masterclass_flutterando/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

Widget customBottomNavigation(BuildContext context) {
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
              const Image(
                image: AssetImage('images/icones/targed.png'),
              ),
              const SizedBox(height: 5),
              Text(
                'Atividades',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            const Image(
              image: AssetImage('images/icones/github.png'),
            ),
            const SizedBox(height: 7),
            Text(
              'Repositorios',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
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
              const Icon(
                Icons.person,
                color: Colors.white,
                size: 27,
              ),
              const SizedBox(height: 5),
              Text(
                'Sobre o dev',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
