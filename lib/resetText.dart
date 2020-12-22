import 'package:flutter/material.dart';

class ResetMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("You are Done, Hit the Reset button",
      style: TextStyle(fontSize: 20, color: Colors.red),
      textAlign: TextAlign.center,
    );
  }
}