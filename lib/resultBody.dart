import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultBody extends StatelessWidget {
  ResultBody(this.summaryData,
      {super.key, required this.color1, required this.color2});

  final Color color1;
  final Color color2;
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: summaryData.map((data) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(((data['index'] as int) + 1).toString(),style: GoogleFonts.aboreto(color: Colors.white),),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text(data['question'] as String,style: GoogleFonts.abel(color: Colors.white,fontSize: 20),)),
                  Text(data['correct-answer'] as String,style: GoogleFonts.aBeeZee(color: Colors.lightGreen),),
                  Text(data['your-answer'] as String)
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
