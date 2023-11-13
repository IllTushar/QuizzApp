import 'package:flutter/material.dart';
import 'package:quizapp/startscreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text("Quiz App")),
        elevation: 2.0,
      ),
      body: Container(
        child: StartScreen(Colors.purple, Colors.deepPurple),
      ),
    );
  }
}
