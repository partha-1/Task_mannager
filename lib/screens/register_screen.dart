import 'package:flutter/material.dart';
import 'package:task_mannager/screens/login.dart';
import 'package:task_mannager/widgets/background_image.dart';
import 'package:task_mannager/widgets/decorations_style.dart';
import 'package:task_mannager/widgets/reusable_eleveted_button.dart';
import 'package:task_mannager/widgets/text_style.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              const Text("Join With Us",style: pageTitleTextStyle,),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: textFieldInputDecoration("Email"),
              ),

              const SizedBox(height: 16,),
              TextFormField(
                decoration: textFieldInputDecoration("First Name"),
              ),

              const SizedBox(height: 16,),
              TextFormField(
                decoration: textFieldInputDecoration("Last Name"),
              ),

              const SizedBox(height: 16,),
              TextFormField(
                decoration: textFieldInputDecoration("Mobile"),
              ),

              const SizedBox(height: 16,),
              TextFormField(
                obscureText: true,
                decoration: textFieldInputDecoration("Password"),
              ),
              const SizedBox(height: 16,),

              ReusableElevatedButton(onTap: (){}),
              const SizedBox(height: 16,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                      }, child: const Text('Sign In?'))
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
