import 'dart:ui';

import 'package:flutter/material.dart';

enum AnswerType { incorrect, correct, very_correct, super_correct }

class Answer extends StatelessWidget {
  final AnswerType _type;
  final String _answer;

  Answer(this._type, this._answer);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    TextDecoration decoration;

    if (this._type == AnswerType.incorrect) {
      backgroundColor = Colors.grey[200];
      decoration = TextDecoration.lineThrough;
    } else if (this._type == AnswerType.correct) {
      backgroundColor = Colors.blue[200];
    } else if (this._type == AnswerType.very_correct) {
      backgroundColor = Colors.orange[200];
    } else if (this._type == AnswerType.super_correct) {
      backgroundColor = Colors.purple[300];
    }

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 1.5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
        this._answer,
        textScaleFactor: 1.3,
        style: TextStyle(decoration: decoration),
      ),
    );
  }
}
