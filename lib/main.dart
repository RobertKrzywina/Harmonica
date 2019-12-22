import 'package:flutter/material.dart';
import 'package:harmonijka/aboutHarmonica.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Harmonijka'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('O harmonijce'),
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
