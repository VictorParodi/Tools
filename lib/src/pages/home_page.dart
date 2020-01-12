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
    return FutureBuilder(
      initialData: [],
      future: menuProvider.loadData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _createItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _createItems(List<dynamic> data) {
    return data.map((item) {
      return ListTile(
        leading: Icon(Icons.supervised_user_circle, color: Colors.black),
        trailing: Icon(Icons.chevron_right, color: Colors.black),
        title: Text(item['texto']),
        subtitle: Text('Subtitle'),);
    }).toList(); 
  }
}