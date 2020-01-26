import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _counter = 0;
  List<dynamic> powers = ['Fly', 'X Ray', 'Strong'];
  String dropvalue = 'Fly';

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(title: Text('Input Page')),
        body: _createInputs(),
       ),
    );
  }

  Widget _createInputs() {
    return (
      ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInputItem(),
          SizedBox(height: 20.0,),
          _createDropdown()
        ],
      )
    );
  }

  Widget _createInputItem() {
    return (
      TextField(
        onChanged: (value) {
          _counter = value.length;
          setState(() {});
        },
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          labelText: 'Name',
          counter: Text('$_counter'),
          hintText: 'Enter your name'
        ),
      )
    );
  }

  Widget _createDropdown() {
    return (
      DropdownButton(
        value: dropvalue,
        items: _createDropOptions(),
        onChanged: (option) {
          setState(() => dropvalue = option);
        },
      )
    );
  }

  List<DropdownMenuItem<dynamic>> _createDropOptions() {
    return powers.map((power) {
      return (
        DropdownMenuItem(
          value: power,
          child: Text(power),
        )
      );
    }).toList();
  }
}