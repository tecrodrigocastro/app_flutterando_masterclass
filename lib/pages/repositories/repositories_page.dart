import 'package:app_masterclass_flutterando/utils/color_schema.dart';
import 'package:app_masterclass_flutterando/widgets/custom_app_bar.dart';
import 'package:app_masterclass_flutterando/widgets/custom_bottom_natigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({Key? key}) : super(key: key);

  @override
  State<RepositoriesPage> createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Repositórios', true),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: customBottomNavigation(context),
    );
  }
}
