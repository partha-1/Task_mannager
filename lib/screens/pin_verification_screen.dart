
import 'package:flutter/material.dart';
import 'package:task_mannager/widgets/background_image.dart';
import 'package:task_mannager/widgets/reusable_eleveted_button.dart';
import 'package:task_mannager/widgets/text_style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {

  final TextEditingController pinTEController = TextEditingController();
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
              const Text('Pin Verification', style: pageTitleTextStyle,),
              const SizedBox(height: 8,),
              Text('A 6 digits pin has been sent to your email', style: subTitleTextStyle,),
              const SizedBox(height: 32 ,),

              PinCodeTextField(
                length: 6,
                obscureText: false,

                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveColor: Colors.blueAccent,
                  activeColor: Colors.grey,
                  selectedFillColor: Colors.white70,
                  inactiveFillColor: Colors.white,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.white,
                cursorColor: Colors.black,
                enableActiveFill: true,
                controller: pinTEController,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);

                },
                appContext: context,
              ),

              const SizedBox(height: 16 ,),
              ReusableElevatedButton(onTap: (){}),

              const SizedBox(height: 24,),

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
    );
  }
}
