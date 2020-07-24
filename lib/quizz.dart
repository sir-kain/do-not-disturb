import 'package:flutter/material.dart';

class Quizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          'Quizz',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
