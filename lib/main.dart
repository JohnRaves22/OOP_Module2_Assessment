import 'package:androidstudio_projects/dashboard_screen.dart';
import 'package:androidstudio_projects/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.white,
      ),
      home: login_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



