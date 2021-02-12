// Third Party
import 'package:flutter/material.dart';

// Own

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }
}

Widget _list() {
  return ListView(
    children: _items(),
  );
}

List<Widget> _items() {
  return [
    ListTile(title: Text('Test')),
  ];
}
