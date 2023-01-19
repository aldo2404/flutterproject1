import 'package:demo_project/layout/button_field.dart';
import 'package:demo_project/screens/carouselpage.dart';
import 'package:demo_project/screens/login_page.dart';
import 'package:demo_project/screens/news_page.dart';
import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 3, 105, 146),
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(0.8),
          child: Image.asset(
            "assets/images/walkzero_name_2.png",
            height: 180,
          ),
        ),
        title: const Text('Learn Flutter Page'),
      ),

      //body content...
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/walkzero_logo3.png"),
              fit: BoxFit.contain),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: buttonField("Login"),
                ),
              ],
            ),
            //Registration container...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarouselPage()),
                    );
                  },
                  child: buttonField("Resource Menu"),
                ),
              ],
            ),

            //News container....
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewsPage()),
                    );
                  },
                  child: buttonField("News"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
