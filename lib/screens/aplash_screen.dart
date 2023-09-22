import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_mannager/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      goToLoginScreen();

    });
  }

  void goToLoginScreen() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => loginScreen()));

      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => loginScreen()), (
          route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/background.svg",
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width, fit: BoxFit.cover,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/icons/logo.svg",
                width: 150,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ));
  }
}
