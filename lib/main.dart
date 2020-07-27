// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import './quizz.dart';
import './camera.dart';
import './gallery.dart';
import './weather.dart';

void main() =>
    runApp(MaterialApp(title: 'Don\'t disturb app', home: HomePage()));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.white])),
                child: Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/logo.jpeg'),
                  ),
                )),
            ListTile(
              title: Text(
                'Quiz',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quizz()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                'Weather',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Weather()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                'Gallery',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Gallery()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                'Camera',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CameraPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Don\'t disturb me'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(child: Text(wordPair.asPascalCase)),
    );
  }
}
