// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:app_masterclass_flutterando/utils/color_schema.dart';

import '../pages/details_page/details_page.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final int qtd;
  final AssetImage image;
  final String description;
  CustomCardHome({
    Key? key,
    required this.title,
    required this.qtd,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 220,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image(
                  image: image,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Text(
                'Exercicios: ',
                style: GoogleFonts.montserrat(
                  color: textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                '$qtd',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: GoogleFonts.montserrat(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const Image(
                image: AssetImage('images/icones/github.png'),
              ),
              const SizedBox(width: 10),
              Text(
                'Acessar código fonte',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(title: title, qtd: qtd),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 34.5,
                  width: 119,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Ver mais',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
