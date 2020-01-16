import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Cards Page'),),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget> [
            _cardsOne()
          ],
        ),
      ),
    );
  }

  _cardsOne() {
    return (
      Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Tile title'),
              subtitle: Text('This is an awesome subtitle for this brand new card and other related'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text('OK'),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('CANCEL'),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}