import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatefulWidget {
  ResultBody({super.key, required this.color1, required this.color2});

  final Color color1;
  final Color color2;

  @override
  State<ResultBody> createState() => _ResultBodyState();
}

class _ResultBodyState extends State<ResultBody> {
  @override
  Widget build(BuildContext context) {
    var beginColor = Alignment.topLeft;
    var endColor = Alignment.bottomLeft;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors : [widget.color1, widget.color2],
              begin: beginColor,
              end: endColor),
        ),
      ),
    );
  }
}
