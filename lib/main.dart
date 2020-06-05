import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ballpage(),
      ),
    );

class Ballpage extends StatefulWidget {
  @override
  _BallpageState createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  int touch = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text("Magic 8 ball"),
          ),
        ),
        body: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                touch = Random().nextInt(4) + 1;
              });
            },
            child: Center(
              child: Image.asset('images/ball$touch.png'),
            ),
          ),
        ));
  }
}
