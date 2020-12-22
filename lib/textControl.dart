import 'package:flutter/material.dart';

class ButtonsControl extends StatelessWidget {
  final Function changeHandler;
  final Function resetHandler;
  ButtonsControl({@required this.changeHandler,
    @required this.resetHandler
  });
  @override
  Widget build(BuildContext context) {
    return Row(children: [
                Container(
                  width: 150, 
                  margin: EdgeInsets.all(25),
                  child: RaisedButton(onPressed: changeHandler,
                    child: Text("Show Text"),
                    textColor: Colors.white,
                    color: Colors.green,
                  )
                ),
                Container(
                  width:150, 
                  margin: EdgeInsets.all(15),
                  child: RaisedButton(onPressed: resetHandler,
                    child: Text("Reset"),
                    textColor: Colors.white,
                    color: Colors.red,
                  )
                ),
              ]
            );
  }
}