import 'package:flutter/material.dart';
import 'package:tools/src/pages/alert_page.dart';
import 'package:tools/src/pages/avatar_page.dart';
import './src/pages/home_page.dart';
// import './src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: new HomePage(),
      initialRoute: 'home',
      routes: <String, WidgetBuilder> {
        'home': (context) => new HomePage(),
        'alert': (context) => new AlertPage(),
        'avatar': (context) => new AvatarPage()
      }
    );
  }
}