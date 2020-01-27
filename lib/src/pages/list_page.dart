import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  // List<dynamic> _numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  ScrollController _scrollcontrol = new ScrollController();
  List<dynamic> _numbers = [];
  int _lastItem = 0;

  @override
  void initState() {
    super.initState();
    _addTen();

    _scrollcontrol.addListener(() {
      if (_scrollcontrol.position.pixels == _scrollcontrol.position.maxScrollExtent) {_addTen();}
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollcontrol.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List Page')),
        body: _createList()
      );
  }

  Widget _createList() {
    return (
      RefreshIndicator(
        child: ListView.builder(
          controller: _scrollcontrol,
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
        ),
        onRefresh: _refresView,
      )
    );
  }

  void _addTen() {
    for (var i = 1; i < 4; i++) {
      _lastItem++;
      _numbers.add(_lastItem);
    }

    setState(() {});
  }

  Future<void> _refresView() async {
    final _duration = Duration(seconds: 2);

    new Timer(_duration, () {
      _numbers.clear();
      _lastItem++;
      _addTen();
    });

    return Future.delayed(_duration);
  }
}