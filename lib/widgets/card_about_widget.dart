import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CardAbout extends StatelessWidget {
  const CardAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      height: 320,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
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
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              'Garoto de programa(de computador), gosto de levantar uns pesos na academia, jogo um lolzinho...',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.whatsapp,
                  color: Theme.of(context).highlightColor,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook,
                  color: Theme.of(context).highlightColor,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.whatsapp,
                  color: Theme.of(context).highlightColor,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook,
                  color: Theme.of(context).highlightColor,
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
