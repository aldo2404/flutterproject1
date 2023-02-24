import 'package:demo_project/layout/appbar_bg_color.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/walkzero_name_2.png",
          width: 120,
        ),
        flexibleSpace: backgroundColor(),
      ),
      body: Center(
        child: Text("Find Location"),
      ),
    );
  }
}
