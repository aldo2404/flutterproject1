// ignore_for_file: non_constant_identifier_names

import 'package:demo_project/layout/form_field.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 3, 105, 146),
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(0.8),
          child: Image.asset(
            "assets/images/walkzero_name_2.png",
            width: 180,
          ),
        ),
        title: const Text('Login Page'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/walkzero_logo3.png"),
              fit: BoxFit.contain),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'welcome to the page',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            reuseFormField("Enter your Mail Id"),
            reuseFormField("Enter your password"),
            formButtonField("Submit"),
            const SizedBox(height: 220),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
