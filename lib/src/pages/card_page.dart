// Third Party
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
        children: [_card()],
        padding: EdgeInsets.all(10),
      ),
    );
  }
}

Widget _card() {
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
