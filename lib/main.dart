// Third Party
import 'package:components/src/pages/avatar_page.dart';
import 'package:flutter/material.dart';

// Own
import 'src/pages/home_page.dart';
import 'src/pages/alert_page.dart';
import 'src/pages/avatar_page.dart';
import 'src/pages/card_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      // Defining routes about a string (name)
      routes: <String, WidgetBuilder>{
        'home': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
      },
      // When a route isn't defined
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
