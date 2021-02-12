// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/provider/menu_provider.dart';

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
  print(menuProvider.options);

  return ListView(
    children: _items(),
  );
}

List<Widget> _items() {
  return [
    ListTile(title: Text('Test')),
  ];
}
