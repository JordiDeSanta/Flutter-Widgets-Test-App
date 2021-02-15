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
  bool _canChangeScale = true;

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
            _createChekbox(),
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
        if (_canChangeScale) {
          setState(() {
            _sliderValue = alpha;
          });
        }
      },
      activeColor: iconsColor,
    );
  }

  Widget _createImage() {
    return AnimatedContainer(
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 400),
      width: _sliderValue,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image(
          image: AssetImage('assets/scalable-image.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _createChekbox() {
    return Center(
      child: Checkbox(
        value: _canChangeScale,
        onChanged: (alpha) {
          setState(() {
            _canChangeScale = alpha;
          });
        },
      ),
    );
  }
}
