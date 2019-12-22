import 'package:flutter/material.dart';
import 'package:harmonijka/aboutHarmonica.dart';
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
      title: 'Harmonica professor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(HARMONICA),
        ),
        body: Center(
          child: RaisedButton(
            child: Text(ABOUT_HARMONICA),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutHarmonica()));
            },
          ),
        ),
      ),
    );
  }
}
