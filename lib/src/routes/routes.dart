import 'package:flutter/material.dart';
import './../pages/home_page.dart';
import './../pages/alert_page.dart';
import './../pages/avatar_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    'home': (context) => new HomePage(),
    'alert': (context) => new AlertPage(),
    'avatar': (context) => new AvatarPage()
  };
}