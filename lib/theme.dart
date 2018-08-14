import 'package:flutter/material.dart';

const kLocatorBlue700 = const Color(0xFF8E24AA);
const kLocatorBlue500 = const Color(0xFFBA68C8);
const kLocatorBlue900 = const Color(0xFF6A1B9A);

const kLocatorOrange400 = const Color(0xFFEABF00);
const kLocatorOrange600 = const Color(0xFFE9A700);

final ThemeData kLocatorTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kLocatorBlue900,
    bottomAppBarColor: Colors.white,
    buttonColor: kLocatorBlue900,
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      textTheme: ButtonTextTheme.primary,
    ),
    primaryColor: kLocatorBlue700,
    primaryColorLight: kLocatorBlue500,
    primaryColorDark: kLocatorBlue900,
    iconTheme: IconThemeData(color: kLocatorBlue900),
    accentIconTheme: IconThemeData(color: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      filled: true,
      helperStyle: new TextStyle(color: Colors.blue),
    ),
  );
}
