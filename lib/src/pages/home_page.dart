import 'package:flutter/material.dart';
import './../providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Compos App')),

      body: _createList(),
    );
  }

  Widget _createList() {
    print(menuProvider.options);

    return ListView(
      children: _createItems()
    );
  }

  List<Widget> _createItems() {
    return <Widget> [];
  }
}