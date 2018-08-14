import 'package:flutter/material.dart';
import 'package:locater_flutter/locate/screens.dart';
import 'package:locater_flutter/theme.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Locator',
      theme: kLocatorTheme,
      home: MapScreen(),
    );
  }
}
