import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: "Kanit",
    appBarTheme: appBarTheme(),
    primaryColor: kPrimaryColor,
    accentColor: kPrimaryColor,
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: kBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kPrimaryColor,
    elevation: 0,
    brightness: Brightness.light,
    centerTitle: true,
    iconTheme: IconThemeData(color: kPrimaryColor),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
