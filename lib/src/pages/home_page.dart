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
  return FutureBuilder(
    future: menuProvider.loadData(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        children: _items(snapshot.data),
      );
    },
  );
}

List<Widget> _items(List<dynamic> data) {
  return [
    ListTile(title: Text('Test')),
  ];
}
