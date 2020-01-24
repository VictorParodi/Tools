import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _counter = 0;

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
          _createInputItem()
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
}