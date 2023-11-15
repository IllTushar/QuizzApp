import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/toolbar.dart';
import 'package:quizapp/resultBody.dart';
class ResultScreen extends StatelessWidget{
  ResultScreen({super.key,required this.color1,required this.color2});
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: Toolbar(color1,"Results"),
     body:Container(child:ResultBody(color1:color1,color2: color2)),
   );
  }

}