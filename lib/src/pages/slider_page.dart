import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _slidervalue = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Page')),
      body: _createSlider()
    );
  }

  Widget _createSlider() {
    return (
      Slider(
        value: _slidervalue,
        label: '$_slidervalue',
        divisions: 50,
        min: 0.0,
        max: 500.0,
        onChanged: (value) {
          setState(() => _slidervalue = value);
        },
      )
    );
  }
}