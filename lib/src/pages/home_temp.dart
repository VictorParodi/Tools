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
    List<Widget> itemList = new List<Widget>();

    for (var option in options) {
      final item = ListTile(title: Text(option));
      itemList..add(item)
              ..add(Divider());
    }

    return itemList;
  }
}