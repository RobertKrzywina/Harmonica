import 'package:flutter/material.dart';
import 'package:harmonijka/aboutHarmonica.dart';
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
      title: 'Harmonica professor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(HARMONICA + ' - ' + APP_VERSION),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: HOME + '\n',
                      style: TextStyle(fontSize: 35),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    RaisedButton(
                      child: Text(ABOUT_HARMONICA),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutHarmonica()));
                      },
                    ),
                    RaisedButton(
                      child: Text(SONGS),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Songs()));
                      },
                    ),
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
