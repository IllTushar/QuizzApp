import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/question1.dart';

class StartScreen extends StatefulWidget {
  late Color color1;
  late Color color2;

  StartScreen(Color color1, Color color2) {
    this.color1 = color1;
    this.color2 = color2;
  }

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var startingColor = Alignment.topLeft;
  var bottomColor = Alignment.bottomLeft;

  void _goToLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => question1(widget.color1, widget.color2)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [widget.color1, widget.color2],
                begin: startingColor,
                end: bottomColor)),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/image.png",
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Quiz App",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'newfonts',
                    color: Colors.white,
                    letterSpacing: 0.02)),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: () {
                _goToLogin();
              },
              icon: const Icon(
                Icons.arrow_forward_sharp,
                color: Colors.white,
              ),
              label: const Text(
                "Let's Start",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'newfonts',
                    fontSize: 20.0),
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
