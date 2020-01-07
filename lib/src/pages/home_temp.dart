import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Components')),
      body: ListView(
        children: _createItems(),
      )
    );
  }

  List<Widget> _createItems() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.supervised_user_circle),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => print('Doing tap'),
            onLongPress: () => print('Doing long press'),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}