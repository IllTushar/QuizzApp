import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Answer.dart';
import 'package:quizapp/model/questionandanswer.dart';

class question1 extends StatefulWidget {
  question1(this.color1,this.color2);
  final Color color1;
  final Color color2;

  @override
  State<question1> createState() => _question1State();
}

class _question1State extends State<question1> {
  var startAlignment = Alignment.topLeft;
  var endAlignment = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final  currentQuestion = question[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color1,
        title: Text("Question 1"),
        elevation: 2.0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [widget.color1, widget.color2],
                end: endAlignment,
                begin: startAlignment),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  currentQuestion.question,
                  style:const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "newfonts"),
                ),
                const SizedBox(
                  height: 20,
                ),
                //... => Are Spreed Oprater..
                ...currentQuestion.answer.map((answer) => Answer(text: answer, onTap: (){})),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
