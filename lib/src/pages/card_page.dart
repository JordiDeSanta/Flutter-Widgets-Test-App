// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/utils/color_palette.dart';
import 'package:components/src/utils/links.dart';

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
        children: [_cardTypeOne(), _cardTypeTwo('Air Jordan 1')],
        padding: EdgeInsets.all(10),
      ),
    );
  }
}

Widget _cardTypeOne() {
  return Card(
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

Widget _cardTypeTwo(String linkName) {
  return Card(
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(links[linkName]),
          height: 300,
          width: 400,
          fit: BoxFit.cover,
        ),
        Container(
          child: Text(linkName),
          padding: EdgeInsets.all(20.0),
        ),
      ],
    ),
  );
}
