// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/provider/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';

Color appBarColor = Color.fromARGB(255, 64, 157, 196);

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
        backgroundColor: appBarColor,
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
  final List<Widget> options = [];

  data.forEach((option) {
    final tempWidget = ListTile(
      title: Text(option['text']),
      leading: getIcon(option['icon']),
      trailing: getIcon('default_arrow'),
      onTap: () {},
    );
    options..add(tempWidget)..add(Divider());
  });

  return options;
}
