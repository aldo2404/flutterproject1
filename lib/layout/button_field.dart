import 'package:flutter/material.dart';

Container buttonField(String buttonName) {
  return Container(
    padding: const EdgeInsets.all(4),
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(251, 245, 239, 239),
          Colors.blue,
        ],
        begin: Alignment.center,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      buttonName,
      style: const TextStyle(
        color: Color.fromARGB(255, 0, 2, 14),
        fontSize: 20,
        fontStyle: FontStyle.italic,
        shadows: [
          Shadow(
              color: Color.fromARGB(255, 238, 234, 4),
              offset: Offset(2, 1),
              blurRadius: 10),
        ],
      ),
    ),
  );
}
