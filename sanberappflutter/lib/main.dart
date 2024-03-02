import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas9/Telegram.dart';
import 'package:sanberappflutter/tugas/tugas10/LoginScreen.dart';
import 'package:sanberappflutter/tugas/tugas10/HomeScreen.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/homescreen': (BuildContext context) => HomeScreen(), // Define the home page route
      },
    );
  }
}