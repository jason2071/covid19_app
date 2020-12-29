import 'package:covid19_app/pages/detail/detail_screen.dart';
import 'package:flutter/material.dart';

import 'pages/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
};
