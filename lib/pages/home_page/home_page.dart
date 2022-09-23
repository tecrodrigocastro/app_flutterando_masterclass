import 'package:app_masterclass_flutterando/pages/details_page/details_page.dart';
import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:app_masterclass_flutterando/widgets/custom_app_bar.dart';
import 'package:app_masterclass_flutterando/widgets/custom_bottom_natigation.dart';
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
      backgroundColor: Theme.of(context).backgroundColor,
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
      bottomNavigationBar: customBottomNavigation(context),
    );
  }
}
