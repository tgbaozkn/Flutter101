import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selectHandler;
  final String answerText;
   Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context){
    return Container (
      width:double.infinity,
      
      child: RaisedButton(
        onPressed: selectHandler,
        color: Colors.white,
        child:Text(answerText,style:TextStyle(color:Colors.blue,fontSize: 23,),
        
        
        ),
      ),//raisedbutton
    );//container
    //color:colors.blue,
  }
}