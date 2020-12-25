import 'package:covid19_app/pages/home/home_screen.dart';
import 'package:covid19_app/services/home_service.dart';
import 'package:covid19_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => HomeService());
}

void main() {
  setupLocator();
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
