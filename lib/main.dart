import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/splash_page.dart';
import 'package:flutter_provider/pages/started_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/startedPage': (context) => GetStartedPage(),
      },
    );
  }
}
