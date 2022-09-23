import 'package:app_masterclass_flutterando/pages/splash_page/splash_page.dart';
import 'package:app_masterclass_flutterando/utils/theme_schema.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.dark;
  switchTheme() {
    setState(() {
      if (themeMode == ThemeMode.dark) {
        themeMode = ThemeMode.light;
      } else {
        themeMode = ThemeMode.dark;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Masterclass',
      themeMode: themeMode,
      theme: ThemeSchema().isLigth(),
      darkTheme: ThemeSchema().isDark(),
      home: const SplashPage(),
    );
  }
}
