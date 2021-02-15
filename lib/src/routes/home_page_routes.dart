// Third Party
import 'package:flutter/material.dart';

// Own
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/input_page.dart';

final routes = <String, WidgetBuilder>{
  'home': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'card': (BuildContext context) => CardPage(),
  'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
  'inputs': (BuildContext context) => InputPage(),
};

final blankRoute =
    MaterialPageRoute(builder: (BuildContext context) => AlertPage());
