import 'package:flutter/material.dart';
import 'package:tools/src/pages/cards_page.dart';
import './../pages/home_page.dart';
import './../pages/alert_page.dart';
import './../pages/avatar_page.dart';
import 'package:tools/src/pages/animatedContainer_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    'home': (context) => new HomePage(),
    'alert': (context) => new AlertPage(),
    'avatar': (context) => new AvatarPage(),
    'card': (context) => new CardsPage(),
    'animatedContainer': (context) => new AnimatedContainerPage() 
  };
}