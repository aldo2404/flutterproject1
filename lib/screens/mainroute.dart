import 'package:demo_project/screens/routpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Routes());
}

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generatorRoute,
    );
  }
}
