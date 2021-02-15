// Third Party
import 'package:components/src/utils/color_palette.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
        backgroundColor: appBarColor,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _createSlider(),
            SizedBox(height: 100),
            _createImage(),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      min: 100,
      max: 400,
      value: _sliderValue,
      divisions: 10,
      label: 'Image Scale',
      onChanged: (alpha) {
        setState(() {
          _sliderValue = alpha;
        });
      },
      activeColor: iconsColor,
    );
  }

  Widget _createImage() {
    return Image(
      image: AssetImage('assets/scalable-image.jpeg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }
}
