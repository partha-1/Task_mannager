import 'package:flutter/material.dart';
import 'package:task_mannager/screens/pin_verification_screen.dart';
import 'package:task_mannager/widgets/background_image.dart';
import 'package:task_mannager/widgets/decorations_style.dart';
import 'package:task_mannager/widgets/reusable_eleveted_button.dart';
import 'package:task_mannager/widgets/text_style.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your Email Address",
                  style: pageTitleTextStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "A 6 digits verification code will be sent to your email address",
                  style: subTitleTextStyle,
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: emailTEController,
                  decoration: textFieldInputDecoration('Email'),
                  validator: (String? text) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ReusableElevatedButton(onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PinVerificationScreen()));
                }),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have account"),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Sign In'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
