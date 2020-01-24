import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Avatar Page')),
        body: _createList(),
      ),
    );
  }

  Widget _createList() {
    return ListView(
      children: _createItems(),
    );
  }

  List<Widget> _createItems() {
    return [
      Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(child: Text('TO'),),
            title: Text('Tile One'),
            subtitle: Text('Tile subtitle'),
          ),
          Divider()
        ],
      ),

      Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://qph.fs.quoracdn.net/main-qimg-70af0060bef82cc31c6e8e0035ddd144'),
              ),
            title: Text('Tile Two'),
            subtitle: Text('Tile subtitle'),
          )
        ],
      )
    ];
  }
}