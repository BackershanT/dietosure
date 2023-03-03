import 'package:dietosure/src/app_colors/colors.dart';
import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Icon(
            Icons.currency_exchange_rounded,
            size: 200,
            color: AppTheme.colors.blue.withOpacity(0.5),
          ),
        ));
  }
}
