import 'package:dietosure/src/app_colors/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const LoginButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          onPressed();
        },
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppTheme.colors.blue,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                color: AppTheme.colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )),
        ),
      ),
    );

  }
}
