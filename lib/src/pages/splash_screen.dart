import 'dart:async';

import 'package:dietosure/src/app_colors/colors.dart';
import 'package:dietosure/src/pages/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    const LoginPage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: AppTheme.colors.white,
          child: Center(child: Image.asset("assets/logo.png")),

        ),
      ),
    );
  }
}
