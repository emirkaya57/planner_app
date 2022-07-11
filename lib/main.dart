import 'package:flutter/material.dart';
import 'package:planner_app/user/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planner App',
      home: Scaffold(
        body:LoginPage(),
      ),
    );
  }
}