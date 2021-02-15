// Third Party
import 'dart:math';
import 'package:flutter/material.dart';

// Own
import 'package:components/src/utils/color_palette.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        backgroundColor: appBarColor,
      ),
      body: ListView(
        children: [
          _cardTypeOne(),
          _cardTypeTwo(),
          _cardTypeOne(),
          _cardTypeTwo(),
          _cardTypeOne(),
          _cardTypeTwo(),
          _cardTypeOne(),
          _cardTypeTwo(),
        ],
        padding: EdgeInsets.all(10),
      ),
    );
  }
}

Widget _cardTypeOne() {
  return Card(
    color: cardBGColor,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Hello bro'),
          subtitle: Text('How are you and your family?'),
        ),
        Row(
          children: [
            FlatButton(onPressed: () {}, child: Text("Ok")),
            FlatButton(onPressed: () {}, child: Text("Cancel")),
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        ),
      ],
    ),
  );
}

Widget _cardTypeTwo() {
  var _rand = new Random();
  var _randNumber = _rand.nextInt(200);

  return Card(
    color: cardBGColor,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(
              'https://picsum.photos/1280/720/?image=$_randNumber'),
          height: 300,
          width: 400,
          fit: BoxFit.cover,
        ),
        Container(
          color: cardBGColor,
          padding: EdgeInsets.all(20.0),
        ),
      ],
    ),
  );
}
