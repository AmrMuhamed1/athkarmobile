

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData Dark = ThemeData(
  primarySwatch: Colors.teal,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.teal,
        statusBarBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0.0,
      titleTextStyle:
      TextStyle(color: Colors.white, fontSize: 30),
      backwardsCompatibility: false,
      backgroundColor: Colors.teal),
);
ThemeData Light = ThemeData(
    primarySwatch: Colors.teal,
    scaffoldBackgroundColor: Colors.grey,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.grey),
        iconTheme: IconThemeData(color: Colors.white)),

    textTheme: TextTheme(
        bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white)));