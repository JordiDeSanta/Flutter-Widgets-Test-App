// Third Party
import 'dart:async';
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
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _add10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Page'),
        backgroundColor: appBarColor,
      ),
      body: Stack(
        children: [
          _createList(),
          _createLoad(),
        ],
      ),
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

  Future<Null> fetchData() async {
    _isLoading = true;

    setState(() {});

    Duration durationOfRequest = Duration(seconds: 3);
    new Timer(durationOfRequest, httprequest);
  }

  void httprequest() {
    _isLoading = false;

    setState(() {});

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 400),
      curve: Curves.fastOutSlowIn,
    );

    _add10();
  }

  Widget _createLoad() {
    if (_isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 50),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
