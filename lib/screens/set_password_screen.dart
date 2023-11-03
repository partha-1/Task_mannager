import 'dart:html';

import 'package:flutter/material.dart';
import 'package:task_mannager/screens/register_screen.dart';
import 'package:task_mannager/widgets/background_image.dart';
import 'package:task_mannager/widgets/decorations_style.dart';
import 'package:task_mannager/widgets/reusable_eleveted_button.dart';
import 'package:task_mannager/widgets/text_style.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Set Password',
                style: pageTitleTextStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Minimum length password 8 character with latter number combination',
                style: subTitleTextStyle,
              ),
              const SizedBox(
                height: 26,
              ),
              TextFormField(
                obscureText: true,
                //controller: ,
                decoration: textFieldInputDecoration("Password"),
                validator: (String? text) {
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                //controller: ,
                decoration: textFieldInputDecoration("Confirm Password"),
                validator: (String? text) {},
              ),
              const SizedBox(
                height: 32,
              ),
              ReusableElevatedButton(
                  text: 'Confirm',
                  onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              }),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account"),
                  TextButton(onPressed: () {}, child: const Text('Sign Up?'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
