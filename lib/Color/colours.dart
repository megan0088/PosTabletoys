import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE5E5E7),
  100: Color(0xFFBFBFC3),
  200: Color(0xFF94959B),
  300: Color(0xFF696A72),
  400: Color(0xFF484A54),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF242530),
  700: Color(0xFF1E1F29),
  800: Color(0xFF181922),
  900: Color(0xFF0F0F16),
});
const int _primaryPrimaryValue = 0xFF282A36;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF5B5BFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF0000F4),
  700: Color(0xFF0000DA),
});
const int _primaryAccentValue = 0xFF2828FF;
