import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          backgroundColor: Colors.black,
        ),
        home: Scaffold(
          body: MagicBall(),
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            backgroundColor: Colors.blue[600],
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int question = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                question = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset(
              'images/ball$question.png',
            ),
          ),
        ),
      ],
    );
  }
}
