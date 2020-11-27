import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(children: <Widget>[
      Container(
        color: Colors.blue,
        height: double.infinity,
        width: double.infinity,
        child: Image(
          image: AssetImage("assets/img/gel.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ])));
  }
}
