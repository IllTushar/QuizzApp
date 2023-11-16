import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/toolbar.dart';
import 'package:quizapp/resultBody.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.summaryData,{super.key, required this.color1, required this.color2});

  final Color color1;
  final Color color2;
  final List<Map<String,Object>>summaryData;

  @override
  Widget build(BuildContext context) {
    var beginColor = Alignment.topLeft;
    var endColor = Alignment.bottomLeft;
    var newSummaryData = summaryData;
    final numberOfQuestions = summaryData.length;
    final correctAnswer  = newSummaryData.where((element){
      return element['your-answer']==element['correct-answer'];
    }
    ).length;
    // TODO: implement build
    return Scaffold(
      appBar: Toolbar(color1, "Results"),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color1,color2],begin: beginColor,end: endColor)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("The Number of Correct Answer $correctAnswer/$numberOfQuestions",style: GoogleFonts.abel(color: Colors.white,fontSize: 20),),
              SizedBox(height: 20,),
              SingleChildScrollView(child: ResultBody(summaryData,color1: color1, color2: color2)),
            ],
          )),
    );
  }
}
