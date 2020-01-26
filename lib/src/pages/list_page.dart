import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<dynamic> _numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List Page')),
        body: _createList()
      );
  }

  Widget _createList() {
    return (
      ListView.builder(
        itemCount: _numbers.length,
        itemBuilder: (context, index) {
          return (
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://i.picsum.photos/id/${index + 1}/500/300.jpg'),
              height: 300.0,
              fit: BoxFit.cover,
            )
          );
        },
      )
    );
  }
}