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
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => setState(() {
              isLoading = true;
            }));
    Timer(
      const Duration(milliseconds: 2000),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Align(
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.elasticIn,
            width: !isLoading ? 100 : 300,
            child: const Image(
              image: AssetImage('images/masterclass_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
