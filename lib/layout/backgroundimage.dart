import 'package:flutter/material.dart';

Container backgroundImage() {
  return Container(
    constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
      image: DecorationImage(
        
          image: AssetImage("assets/images/walkzero_logo3.png"),
          fit: BoxFit.cover),
    ),
  );
}
