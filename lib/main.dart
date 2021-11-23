import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_yt/screens/landing_screen.dart';
import 'helpers/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
          primaryColor: colorWhite,
          accentColor: colorDarkBlue,
          textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
          fontFamily: "Montserrat"),
      home: const LandingScreen(),
    );
  }
}
