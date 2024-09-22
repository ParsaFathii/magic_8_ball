import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade800,
          title: Text(
            'Magic 8 Ball',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: BallState(),
      ),
    );
  }
}

class BallState extends StatefulWidget {
  BallState({super.key});

  @override
  State<BallState> createState() => _BallStateState();
}

class _BallStateState extends State<BallState> {
  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              click = Random().nextInt(6);
            });
          },
          child: Image.asset('images/ball$click.png'),
        ),
      ),
    );
  }
}
