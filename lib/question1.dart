import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Answer.dart';
import 'package:quizapp/ResultScreen.dart';
import 'package:quizapp/model/questionandanswer.dart';
import 'package:quizapp/toolbar.dart';

class question1 extends StatefulWidget {
  question1(this.color1, this.color2);

  final Color color1;
  final Color color2;

  @override
  State<question1> createState() => _question1State();
}

class _question1State extends State<question1> {
  var startAlignment = Alignment.topLeft;
  var endAlignment = Alignment.bottomLeft;
  var currentQuestionIndex = 0;
  final List<String> answer = [];

  void moveToNextQuestion(String Answers) {
    setState(() {
      currentQuestionIndex++;
      answer.add(Answers);
    });
  }

  List<Map<String, Object>> resultFunction() {
    List<Map<String, Object>> summerOfTheResult = [];
    for(var i =0;i<answer.length;i++){
      summerOfTheResult.add({
        "index":i,
        "question":question[i].question,
        "correct-answer":question[i].answer[0],
        "your-answer":answer[i]
      });
    }
    return summerOfTheResult;
  }

  void noOfQuestions() {
    if (answer.length == question.length) {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ResultScreen(resultFunction(),
                    color1: widget.color1, color2: widget.color2)));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final currentQuestion = question[currentQuestionIndex];
    return Scaffold(
      appBar: Toolbar(widget.color1, "Quizz"),
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
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(currentQuestion.question,
                      style: GoogleFonts.abel(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 20,
                ),
                //... => Are Spreed Operator..
                ...currentQuestion.getShuffle().map((answer) => Answer(
                    text: answer,
                    onTap: () {
                      moveToNextQuestion(answer);
                      noOfQuestions();
                    })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
