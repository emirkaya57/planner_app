import 'package:flutter/material.dart';
import 'package:planner_app/user/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planner App',
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
