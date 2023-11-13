import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class question1 extends StatefulWidget {
  late Color color1;
  late Color color2;

  question1(Color color1, Color color2) {
    this.color1 = color1;
    this.color2 = color2;
  }

  @override
  State<question1> createState() => _question1State();
}

class _question1State extends State<question1> {
  var startAlignment = Alignment.topLeft;
  var endAlignment = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                const Text(
                  "Question 1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "newfonts"),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Answer 1"),style: ElevatedButton.styleFrom(primary: Colors.lightBlue),),
                ElevatedButton(onPressed: () {}, child: Text("Answer 2"),style: ElevatedButton.styleFrom(primary: Colors.lightBlue),),
                ElevatedButton(onPressed: () {}, child: Text("Answer 3"),style: ElevatedButton.styleFrom(primary: Colors.lightBlue),),
                ElevatedButton(onPressed: () {}, child: Text("Answer 4"),style: ElevatedButton.styleFrom(primary: Colors.lightBlue),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
