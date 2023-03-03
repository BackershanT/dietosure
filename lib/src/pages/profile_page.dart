import 'package:dietosure/src/app_colors/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Icon(
            Icons.account_circle_outlined,
            size: 200,
            color: AppTheme.colors.blue.withOpacity(0.5),
          ),
        )
    );
  }
}
