import 'package:flutter/material.dart';
import './src/routes/routes.dart';
import './src/pages/alert_page.dart';
// import './src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: getRoutes(),
      onGenerateRoute: (settings) {
        return (
          MaterialPageRoute(builder: (context) => new AlertPage())
        );
      },
    );
  }
}