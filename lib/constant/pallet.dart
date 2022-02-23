import 'package:flutter/material.dart';

Color primaryColor = Color(0xFF6045F0);
Color primaryDarkColor = Color(0xFF609032C);
Color greyInput = Color(0xFFF4F5F7);
Color dark = Color(0xFF151515);
Color yellow = Color(0xFFffb556);
Color redColor = Color(0xFFD0021B);

Color lightPurple = Color(0xFFEFECFE);
Color lightGreen = Color(0xFFE9F6EC);
Color lightYellow = Color(0xFFFEF5EC);

const MaterialColor primaryswatch =
MaterialColor(_primaryswatchPrimaryValue, <int, Color>{
  50: Color(0xFFE8EAF6),
  100: Color(0xFFC5CBE9),
  200: Color(0xFF9FA8DA),
  300: Color(0xFF7985CB),
  400: Color(0xFF5C6BC0),
  500: Color(_primaryswatchPrimaryValue),
  600: Color(0xFF394AAE),
  700: Color(0xFF3140A5),
  800: Color(0xFF29379D),
  900: Color(0xFF1B278D),
});
const int _primaryswatchPrimaryValue = 0xFF3F51B5;

const MaterialColor primaryswatchAccent =
MaterialColor(_primaryswatchAccentValue, <int, Color>{
  100: Color(0xFFC6CBFF),
  200: Color(_primaryswatchAccentValue),
  400: Color(0xFF606EFF),
  700: Color(0xFF4757FF),
});
const int _primaryswatchAccentValue = 0xFF939DFF;
