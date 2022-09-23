import 'dart:async';

import 'package:app_masterclass_flutterando/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:app_masterclass_flutterando/utils/color_schema.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Align(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage('images/logo.png'),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
