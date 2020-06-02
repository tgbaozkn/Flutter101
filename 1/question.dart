import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questionText; //boyle yapinca asla degismez demek
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(20) ,
      child: Text(
        questionText,
        textAlign: TextAlign.center,
         style: TextStyle(fontSize:26,backgroundColor:Color.fromARGB(34, 56, 78, 250),color: Color.fromARGB(255, 0, 0, 0)
         
         ),
         ),
         );
  }
}