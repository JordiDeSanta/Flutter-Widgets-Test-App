import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: ListView(
        children: _createItemsInShort(),
      ),
    );
  }
}

// List texts
final options = ['One', 'Two', 'Three', 'Four', 'Five'];

List<Widget> _createItems() {
  List<Widget> finalWidget = new List<Widget>();

  for (var opt in options) {
    // Setting tempWidget to add to the list
    final tempWidget = ListTile(
      title: Text(opt),
    );
    // Adding widgets
    finalWidget..add(tempWidget)..add(Divider(height: 40.0));
  }

  return finalWidget;
}

List<Widget> _createItemsInShort() {
  var widgets = options.map((item) {
    // Creating Tiles to return
    return ListTile(
      title: Text(item),
    );
  }).toList(); // Converting in list<widget>

  return widgets;
}
