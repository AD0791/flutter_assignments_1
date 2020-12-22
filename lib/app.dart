import 'package:flutter/material.dart';
import 'package:flutter_assignments_1/resetText.dart';
import 'package:flutter_assignments_1/text.dart';
import 'package:flutter_assignments_1/textControl.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<String> _hasardText = const ["Napoleon","Dessalines",
    "You are so powerful", "House of Cards"
  ];
  int _listIndex = 0;

  void _changeText(){
    setState(() {
      _listIndex += 1;
    });
  }

  void _resetText(){
    setState(() {
      _listIndex = 0;
    });
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("First Assignments",
                  textAlign: TextAlign.center
                ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: _listIndex < _hasardText.length ? 
                ChangingText(indexQuestion: _listIndex, listOfText: _hasardText) : 
                 ResetMessage()  
              )
            , ButtonsControl(changeHandler: _changeText, resetHandler: _resetText)
            ,       
          ],
        ),
      ),
    );
  }
}