import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  const Answer({super.key,required this.text,required this.onTap});
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text),
      style: ElevatedButton.styleFrom(primary: Colors.lightBlue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
    );
  }

}