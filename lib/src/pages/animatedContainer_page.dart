import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _height = 50.0;
  double _width = 50.0;
  Color _boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Animated Container')),
        body: Center(
          child: AnimatedContainer(
              curve: Curves.elasticOut,
              duration: Duration(seconds: 1),
              height: _height,
              width: _width,
              color: _boxColor,
          ),
        ),
        floatingActionButton: FloatingActionButton(
         child: Icon(Icons.play_arrow),
         onPressed: () {
          _height = Random().nextInt(300).toDouble();
          _width = Random().nextInt(300).toDouble();
          _boxColor = Color.fromRGBO(
            Random().nextInt(255),
            Random().nextInt(255),
            Random().nextInt(255),
            1.0
          );
          setState(() {});
         },
        ),
      ),
    );
  }
}