import 'package:flutter/material.dart';
import 'package:flutter_demo1/pages/home_page.dart';
import 'package:flutter_demo1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
