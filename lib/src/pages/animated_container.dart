// Third Party
import 'dart:math';
import 'package:flutter/material.dart';

// Own
import 'package:components/src/utils/color_palette.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink[300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container Page'),
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _change,
        backgroundColor: iconsColor,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _change() {
    final _rand = new Random();
    double _maxWidth = 500.0;
    double _maxHeight = 500.0;

    setState(() {
      _width = _rand.nextDouble() * _maxWidth;
      _height = _rand.nextDouble() * _maxHeight;
      _color = Color.fromRGBO(
        _rand.nextInt(255),
        _rand.nextInt(255),
        _rand.nextInt(255),
        1,
      );
    });
  }
}
