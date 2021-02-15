// Third Party
import 'package:components/src/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _numberList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Page'),
        backgroundColor: appBarColor,
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int i) {
        return Image.network('https://picsum.photos/1280/720/?image=$i');
      },
    );
  }
}
