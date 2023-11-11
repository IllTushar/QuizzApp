import 'package:flutter/material.dart';
import 'package:quizapp/question1.dart';
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(Colors.purple, Colors.deepPurple),
    ));

class Home extends StatefulWidget {
  late Color color1;
  late Color color2;

  Home(this.color1, this.color2);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var startingColor = Alignment.topLeft;
  var bottomColor = Alignment.bottomLeft;

  void _goToLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => question1()));

  }

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
            SizedBox(
              height: 20,
            ),
            Text("Quiz App",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'newfonts',
                    color: Colors.white,
                    letterSpacing: 0.02)),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  _goToLogin();
                },
                child: Text(
                  "Let's Start->",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'newfonts',
                      fontSize: 20.0),
                ))
          ],
        )),
      ),
    );
  }

  
}
