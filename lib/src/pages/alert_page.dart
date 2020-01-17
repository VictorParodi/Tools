import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Alert Page')),
        body: Center(
          child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Show modal'),
            onPressed: () {
              _showModal(context);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.chevron_left),
        ),
      ),
    );
  }

  void _showModal(context) {
    showDialog(
      context: context,
      child: AlertDialog(
        title: Text('Modal'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Content for this modal element'),
            FlutterLogo(size: 100.0,)
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('CLOSE'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      )
    );
  }
}