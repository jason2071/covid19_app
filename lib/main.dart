import 'package:covid19_app/pages/home/home_screen.dart';
import 'package:covid19_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
