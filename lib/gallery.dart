import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(
          'Gallery',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
