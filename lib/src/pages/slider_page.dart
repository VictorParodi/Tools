import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _slidervalue = 20.0;
  bool _switchvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _createSlider(),
            _createSwitch()
          ],
        ),
      )
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
        onChanged: _switchvalue? null : (value) {
          setState(() => _slidervalue = value);
        },
      )
    );
  }

  Widget _createSwitch() {
    return (
      SwitchListTile(
        title: Text('Slider blocker'),
        value: _switchvalue,
        onChanged: (value) {
          setState(() => _switchvalue = value);
        },
      )
    );
  }
}