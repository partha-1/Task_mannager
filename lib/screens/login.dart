import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController emailTEController = TextEditingController();
  TextEditingController passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SvgPicture.asset(
          "assets/images/background.svg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SafeArea(
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
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: emailTEController,
                    decoration: const InputDecoration(
                        hintText: "Emain",
                        fillColor: Colors.white,
                        filled: true,
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
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
                    decoration: const InputDecoration(
                        hintText: "Password",
                        fillColor: Colors.white,
                        filled: true,
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                    validator: (String? text) {
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  
                  Center(child: TextButton(onPressed: () {}, child: Text("Forget password?"))),


                  const SizedBox(
                    height: 8,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(onPressed: (){}, child: Text("Sign Up")),
                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}