import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8BallApp());
}

class Magic8BallApp extends StatelessWidget {
  const Magic8BallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade800,
          title: const Text(
            'Magic 8 Ball',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const BallPage(),
      ),
    );
  }
}

/// Ask a question, tap the ball, and get one of six classic answers.
class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  static final _random = Random();

  int _ballNumber = 0;

  void _shakeBall() {
    setState(() => _ballNumber = _random.nextInt(6));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: _shakeBall,
        child: Image.asset('images/ball$_ballNumber.png'),
      ),
    );
  }
}
