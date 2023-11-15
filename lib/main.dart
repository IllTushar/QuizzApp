import 'package:flutter/material.dart';
import 'package:quizapp/startscreen.dart';
import 'package:quizapp/toolbar.dart';
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
String activityNames = "StartActivity";

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar:Toolbar(Colors.purple, activityNames),
      body: Container(
        child: const StartScreen(color1: Colors.purple,color2: Colors.deepPurple),
      ),
    );
  }
}
