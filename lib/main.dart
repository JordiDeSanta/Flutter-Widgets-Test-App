// Third Party
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Own
import 'package:components/src/routes/home_page_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      // Defining routes about a string (name)
      routes: routes,
      // When a route isn't defined
      onGenerateRoute: (settings) {
        return blankRoute;
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country codes
      ],
    );
  }
}
