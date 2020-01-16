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
            _cardsOne(),
            _cardTwo()
          ],
        ),
      ),
    );
  }

  Widget _cardsOne() {
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

  Widget _cardTwo() {
    return (
      Card(
        child: Column(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://www.itl.cat/pngfile/big/29-299814_gigi-hadid.jpg'),
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 100),
              height: 400.0,
            ),
            Container(
              child: Text('This is an image card'),
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
      )
    );
  }
}