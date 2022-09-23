import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAbout extends StatelessWidget {
  const CardAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: 320,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 116,
            width: 116,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4D03AQHDemU5xIHApg/profile-displayphoto-shrink_200_200/0/1648121255178?e=1669248000&v=beta&t=YGtvhUxBcDwbtmWKwYiY6TLwqklv4kEVzi5dt4J7Y3w',
              ),
            ),
          ),
          const SizedBox(height: 13),
          Text(
            'Rodrigo Castro (RED RODRIGO)',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              'Garoto de programa(de computador), gosto de levantar uns pesos na academia, jogo um lolzinho...',
              style: GoogleFonts.poppins(
                color: textColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.whatsapp,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.whatsapp,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
