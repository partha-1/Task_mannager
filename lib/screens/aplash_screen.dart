import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_mannager/screens/login.dart';
import 'package:task_mannager/widgets/background_image.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      goToLoginScreen();
    });

  }

  void goToLoginScreen (){

    Future.delayed(Duration(seconds: 1)).then((value) => {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Center(
          child: SvgPicture.asset(
            "assets/icons/logo.svg",
            width: 150,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
