import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_mannager/screens/forget_password_screen.dart';
import 'package:task_mannager/widgets/background_image.dart';

import '../widgets/decorations_style.dart';
import '../widgets/reusable_eleveted_button.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTEController = TextEditingController();
  TextEditingController passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: SafeArea(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Get Started With",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  TextFormField(
                    controller: emailTEController,
                    decoration: textFieldInputDecoration('Email'),
                    validator: (String? text) {
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordTEController,
                    obscureText: true,
                    decoration: textFieldInputDecoration('Password'),
                    validator: (String? text) {
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),


                  ReusableElevatedButton(
                    onTap: (){},
                  ),


                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPasswordScreen()));
                          },
                          child: const Text('Forget Password?'))),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account"),
                      TextButton(
                          onPressed: () {}, child: const Text('Sign Up?'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


