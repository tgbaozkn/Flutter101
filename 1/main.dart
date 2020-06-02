import 'package:flutter/material.dart';
import './question.dart';
import './result.dart';
import "./answers.dart";
//void main() {
  //runApp(myApp());
//}
void main() => runApp(MyApp());
class MyApp extends StatefulWidget 
{
    @override 
    State<StatefulWidget> createState(){
        return _MyAppState();
    }
}
 class _MyAppState extends State<MyApp> {
  var _questionIndex=0;
  var _totalScore=0;
  var a=0;
 
  @override
  Widget build(BuildContext context) {
    final questions = const [
    {
      'questionText': "What\'s your favorite color?",
      'answers': [
        {'text': 'White', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Purple', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Tarkan', 'score': 1},
        {'text': 'Tarkan', 'score': 1},
        {'text': 'Tarkan', 'score': 1},
        {'text': 'Tarkan', 'score': 1},
      ],
    },
  ];
    void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

     void _answerQuestion(int score ) {
       _totalScore+= score;
        
    
     setState(() {
        _questionIndex= _questionIndex + 1;
    if(_questionIndex < questions.length){
      print("we have more question");
      
    }
    
     });
   
    
  }
 /* void cevap(){
    setState(() {
      a=a+1;
    });
  }
  */

   // var alar= ["a","b","c","d","e","f","g",];
        return MaterialApp(
          home: Scaffold(
              appBar: AppBar(
               backgroundColor : const Color.fromARGB(200, 0, 255, 245),
                title: Text("Quiz App"),),
    
              body : _questionIndex < questions.length ?  Column(
          children: [
          
          Question(questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer (_answerQuestion,answer);
          }).toList(),
          
         // RaisedButton(child:Text("k"),onPressed: cevap,),
          //RaisedButton(child: Text('Purple',style: TextStyle(color: Color.fromARGB(250, 128, 128, 192),fontSize:20,),),
          
         /* onPressed: (){
            print("the answer is chosen");
          },),
          RaisedButton(child: Text('Green',style: TextStyle(color: Color.fromARGB(250, 34, 177, 76),fontSize:20 ),), onPressed:_answerQuestion,),
          RaisedButton(child: Text('Red',style: TextStyle(color: Color.fromARGB(250, 174, 53, 56),fontSize:20),), onPressed: (){
            print("answer 3 is chosen!");
          },), */
          ],
          //home:Center (child: Text("Hello from the other side"),) ,
        ) : Result(_totalScore,_resetQuiz),
        ),
         //Scaffold
        )
        ;
      }
    }
