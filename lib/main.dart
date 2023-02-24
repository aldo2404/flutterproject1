import 'dart:async';
import 'package:demo_project/layout/bottomnavibar.dart';
import 'package:demo_project/screens/carouselpage.dart';
import 'package:demo_project/screens/mainroute.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MySampleApp());
}

class MySampleApp extends StatelessWidget {
  const MySampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Routes()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 249, 251, 252),
            Color.fromARGB(255, 1, 59, 82),
          ],
          focalRadius: 0.8,
          // stops: [
          //   0.7,
          //   1.3,
          // ],
        ),
      ),
      child: Center(
        child: Image.asset(
          "assets/images/walkzero_name_2.png",
          width: 220,
        ),
      ),
    );
  }
}
