import 'package:flutter/material.dart';

Container backgroundColor() {
  return Container(
    decoration: const BoxDecoration(
      gradient: RadialGradient(
        colors: <Color>[
          Color.fromARGB(255, 252, 251, 251),
          Color.fromARGB(255, 1, 59, 82)
        ],
        focalRadius: 4,
        radius: 2,
      ),
    ),
  );
}
