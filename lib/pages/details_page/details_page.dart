import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:app_masterclass_flutterando/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final int qtd;
  const DetailsPage({Key? key, required this.title, required this.qtd})
      : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, widget.title, false),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: widget.qtd,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      '${index + 1}',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Exercicios 0${index + 1}',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
