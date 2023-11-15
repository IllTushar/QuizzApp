import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Answer extends StatelessWidget{
  const Answer({super.key,required this.text,required this.onTap});
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onTap,
        child: Center(child: Text(text,style: GoogleFonts.aBeeZee(),)),
        style: ElevatedButton.styleFrom(primary: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
    );
  }

}