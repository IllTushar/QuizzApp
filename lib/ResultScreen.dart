import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/toolbar.dart';
class ResultScreen extends StatelessWidget{
  ResultScreen({super.key,required this.color1,required this.color2});
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: Toolbar(color1,"Result"),
   );
  }

}