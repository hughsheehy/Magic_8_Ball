import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Ask Hugh a question.'),
        backgroundColor: Colors.green.shade800,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballnumber = 1 + Random().nextInt(5);
          });
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
