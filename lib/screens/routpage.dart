import 'package:demo_project/layout/bottomnavibar.dart';
import 'package:demo_project/screens/carouselpage.dart';
import 'package:demo_project/screens/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/carouselpage':
        return MaterialPageRoute(builder: (_) => CarouselPage());
      case '/homepage':
        return MaterialPageRoute(builder: (_) => BottomNaviBar());
      default:
        return MaterialPageRoute(builder: (_) => CarouselPage());
    }
  }
}
