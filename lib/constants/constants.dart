import 'package:flutter/material.dart';

TextStyle mediumTextStyle = const TextStyle(
  fontSize: 20,
  color: Colors.lightGreenAccent,
);
TextStyle largeTextStyle = const TextStyle(
  fontSize: 50,
  color: Colors.lightGreenAccent,
  fontWeight: FontWeight.bold
);

Color activeColor =
    Colors.red; // color change korar jonno aigola use korte hoi //
Color inactiveColor = Colors.black;

double iconMedium = 80.0;
String maleText = "MALE";
String femaleText = "FEMALE";

enum Gender { male, female, other }
