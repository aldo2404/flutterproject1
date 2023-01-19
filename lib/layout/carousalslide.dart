import 'package:flutter/material.dart';

Container carousalSlide(String carousalimg) {
  return Container(
    margin: EdgeInsets.all(6.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: AssetImage(carousalimg),
        fit: BoxFit.cover,
      ),
    ),
  );
}
