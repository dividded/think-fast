import 'package:flutter/material.dart';
import 'package:think_fast/screens/questions/answer.dart';

class QuestionsScreen extends StatelessWidget {
  QuestionsScreen({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("Think Fast")),
      body: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.lightBlue[0]),
              child: Text(
                "ראשי ממשלה ישראלים",
                textScaleFactor: 1.8,
              ),
              alignment: Alignment.center,
            ),
            Answer(AnswerType.incorrect, 'אבי כהן'),
            Answer(AnswerType.correct, 'בנימין נתניהו'),
            Answer(AnswerType.very_correct, 'דוד בן גוריון'),
            Answer(AnswerType.super_correct, 'אהוד ברק'),
            Expanded(child: Container()),
            TextField(decoration: InputDecoration(border: OutlineInputBorder()))
          ],
        ),
      ));
}
