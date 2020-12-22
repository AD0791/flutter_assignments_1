import 'package:flutter/material.dart';
class ChangingText extends StatelessWidget {
  final List<String> listOfText;
  final int indexQuestion;
  ChangingText({@required this.indexQuestion, 
    @required this.listOfText
  });
  @override
  Widget build(BuildContext context) {
    return Text(listOfText[indexQuestion],
      style: TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    ) ;
  }
}