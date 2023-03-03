import 'package:dietosure/src/app_colors/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
         body: Center(
      child: Icon(
      Icons.home_outlined,
      size: 200,
      color: AppTheme.colors.blue.withOpacity(0.5),
    ),
    ));
  }
}
