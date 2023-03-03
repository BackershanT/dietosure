import 'package:dietosure/src/app_colors/colors.dart';
import 'package:dietosure/src/pages/bottom_navigation_screen.dart';
import 'package:dietosure/src/widgets/button/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(),
              Image.asset("assets/logo.png"),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        color: AppTheme.colors.whites),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Email Address",
                            style: TextStyle(
                                color: AppTheme.colors.text, fontSize: 18),
                          ),
                        ),
                        TextFormField(
                            cursorColor: AppTheme.colors.black,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: AppTheme.colors.black,
                                ),
                                hintText: "abc@gmail.com")),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,20,0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        color: AppTheme.colors.whites),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                color: AppTheme.colors.text, fontSize: 18),
                          ),
                        ),
                        TextFormField(
                          obscureText: _obscureText,
                          controller: _passwordController,
                            cursorColor: AppTheme.colors.black,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _obscureText =!_obscureText;
                                  });
                                },
                                child: Icon(_obscureText ?Icons.visibility:Icons.visibility_off),
                              ),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: AppTheme.colors.black,
                                ),
                                hintText: "*******")),
                      ],
                    ),
                  ),
                ),
              ),
              LoginButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BottomnavigationPage()));

              }, title: 'Login'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Signup',
                      style: TextStyle(color: AppTheme.colors.text),
                    ),
                    Text(
                      'Forget Password?',
                      style: TextStyle(color: AppTheme.colors.text),
                    ),
                  ],
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
