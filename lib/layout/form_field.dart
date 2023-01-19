// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

Container reuseFormField(String text) {
  return Container(
    height: 60,
    width: 90,
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(5),
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
          spreadRadius: 5,
          color: Colors.grey,
        ),
      ],
    ),
    child: Container(
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(
      //     horizontal: 10,
      //     vertical: 8,
      //   ),
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: text,
        ),
      ),
    ),
  );
}

Container formButtonField(String buttonname) {
  return Container(
    child: Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(buttonname),
      ),
    ),
  );
}
