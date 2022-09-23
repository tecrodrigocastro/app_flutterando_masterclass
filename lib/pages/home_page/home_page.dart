import 'package:app_masterclass_flutterando/pages/details_page/details_page.dart';
import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:app_masterclass_flutterando/widgets/custom_app_bar.dart';
import 'package:app_masterclass_flutterando/widgets/custom_card_home.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: customAppBar(context, 'Atividades', true),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            CustomCardHome(
              image: const AssetImage('images/icones/running.png'),
              qtd: 4,
              title: 'Animações',
              description:
                  'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
            ),
            const SizedBox(height: 16),
            CustomCardHome(
              image: const AssetImage('images/icones/glasses.png'),
              qtd: 2,
              title: 'Leitura de Mockup',
              description:
                  'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
            ),
            const SizedBox(height: 16),
            CustomCardHome(
              image: const AssetImage('images/icones/toys.png'),
              qtd: 3,
              title: 'Playground',
              description: 'Ambiente destinado a testes e estudos em geral',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
            Column(
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
          ],
        ),
      ),
    );
  }
}
