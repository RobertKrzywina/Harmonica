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
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: HOME + '\n',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'CourierPrime',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    RaisedButton(
                      child: Text(
                        ABOUT_HARMONICA,
                        style: TextStyle(
                          fontFamily: 'CourierPrime',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutHarmonica()));
                      },
                    ),
                    RaisedButton(
                      child: Text(
                        SONGS,
                        style: TextStyle(
                          fontFamily: 'CourierPrime',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
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
