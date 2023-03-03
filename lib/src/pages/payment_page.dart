import 'package:dietosure/src/app_colors/colors.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Icon(
            Icons.payment_outlined,
            size: 200,
            color: AppTheme.colors.blue.withOpacity(0.5),
          ),
        ));
  }
}
