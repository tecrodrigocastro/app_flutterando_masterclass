import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:app_masterclass_flutterando/widgets/custom_app_bar.dart';
import 'package:app_masterclass_flutterando/widgets/custom_bottom_natigation.dart';
import 'package:app_masterclass_flutterando/widgets/custom_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/card_about_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Sobre o Dev', true),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: customBottomNavigation(context),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            const CardAbout(),
            const SizedBox(height: 20),
            Text(
              'Tecnologias Favoritas',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    width: 94,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const FlutterLogo(
                          size: 50,
                        ),
                        Text(
                          'Flutter',
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Habilidades e Competências',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(15),
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Dart/Flutter',
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'PHP',
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'MySql',
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'HTML',
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'CSS',
                        style: GoogleFonts.poppins(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CustomProgressIndicator(value: 0.4),
                      SizedBox(height: 25),
                      CustomProgressIndicator(value: 0.9),
                      SizedBox(height: 25),
                      CustomProgressIndicator(value: 0.7),
                      SizedBox(height: 25),
                      CustomProgressIndicator(value: 0.9),
                      SizedBox(height: 25),
                      CustomProgressIndicator(value: 0.9),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
