import 'package:flutter/material.dart';
import './../providers/menu_provider.dart';
import './../utils/icons_utils.dart';

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
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.chevron_right, color: Colors.black),
        title: Text(item['texto']),
        subtitle: Text('Subtitle'),
        onLongPress: () {},
        onTap: () {},
        );
    }).toList(); 
  }
}