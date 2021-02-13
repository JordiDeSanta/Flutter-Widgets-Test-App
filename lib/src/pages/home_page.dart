// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/provider/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:components/src/utils/color_palette.dart';

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
        // Getting a list of the items (buttons)
        children: _items(snapshot.data, context),
      );
    },
  );
}

List<Widget> _items(List<dynamic> data, BuildContext homeContext) {
  final List<Widget> options = [];

  // Protecting parameter
  if (data == null) {
    return [];
  }

  data.forEach((option) {
    final tempWidget = ListTile(
      // Defining properties (json)
      title: Text(option['text']),
      leading: getIcon(option['icon']),
      trailing: getIcon('default_arrow'),
      onTap: () {
        Navigator.pushNamed(homeContext, option['route']);
      },
    );
    options..add(tempWidget)..add(Divider());
  });

  return options;
}
