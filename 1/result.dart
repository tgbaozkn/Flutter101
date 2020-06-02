import 'package:flutter/material.dart';



class Result  extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get resultPhrase{
    String resultText ;
    if(resultScore<=8){
      resultText="What is it mean?";

    }else if  (resultScore<=12){
       resultText="Maybe good or not";

    }
    else if(resultScore<=16) {
       resultText="Good";
    }
    else{
       resultText="Stupid!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center( child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.orange,),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
        );
          }
}