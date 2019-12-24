import 'package:flutter/material.dart';
import 'package:harmonijka/aboutHarmonica.dart';
import 'package:harmonijka/shared/buttonSection.dart';
import 'package:harmonijka/shared/screenTitleSection.dart';
import 'package:harmonijka/songs.dart';

import 'shared/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: HARMONICA,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'CourierPrime'),
      home: Scaffold(
        appBar: AppBar(
          title: Text(HARMONICA),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              ScreenTitleSection(HOME + '\n'),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ButtonSection(ABOUT_HARMONICA, AboutHarmonica()),
                    ButtonSection(SONGS, Songs()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
