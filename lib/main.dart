import 'package:components/src/pages/home_temp.dart';
// Third Party
import 'package:flutter/material.dart';

// Own
import 'src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
