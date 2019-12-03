import 'package:flutter/material.dart';

//Theme Data
ThemeData kMainThemeData = ThemeData.dark().copyWith(
  primaryColor: Color(0xff0A0A21),
  scaffoldBackgroundColor: Color(0xff0A0A21),
);

//input_page
const double kBottomContainerHeight = 80.0;
const Color kActiveCardColor = Color(0xff1D1E33);
const Color kInactiveCardColor = Color(0xff0A0A21); //0xff101427
const Color kBottomContainerColor = Color(0xffEB1555);

const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff6F717F),
);

const TextStyle kNumberTextStyle = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.bold,
);

const TextStyle kButtonTextStyle = TextStyle(
  fontSize: 22,
  color: Colors.white,
);

const TextStyle kHeadLineTextStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const TextStyle kBodyTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Color(0xff24d876),
);

const TextStyle kBMITextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
