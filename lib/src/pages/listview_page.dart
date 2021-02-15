// Third Party
import 'package:components/src/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _numberList = new List();
  int _lastItem = 0;

  @override
  void initState() {
    super.initState();

    _add10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _add10();
      }
    });
  }

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
      controller: _scrollController,
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int i) {
        final _image = _numberList[i];
        return FadeInImage(
          height: 200,
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://picsum.photos/1280/720/?image=$_image'),
          fit: BoxFit.cover,
        );
      },
    );
  }

  void _add10() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }

    setState(() {});
  }
}
