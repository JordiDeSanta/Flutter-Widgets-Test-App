// Third Party
import 'package:components/src/utils/color_palette.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
        backgroundColor: appBarColor,
      ),
      body: Column(
        children: [
          _createSlider(),
        ],
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      value: _sliderValue,
      onChanged: (alpha) {
        setState(() {
          _sliderValue = alpha;
        });
      },
      activeColor: iconsColor,
    );
  }
}
