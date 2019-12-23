import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harmonijka/song.dart';
import 'shared/constants.dart';

class Songs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(children: <Widget>[
          Text(
            BACK,
            style: TextStyle(
              fontFamily: 'CourierPrime',
            ),
          ),
        ]),
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
                    text: SONGS + '\n',
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
                      SASIEDZI,
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
                          builder: (context) => Song(),
                          settings: RouteSettings(arguments: SASIEDZI),
                        ),
                      );
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      AUTOBIOGRAFIA,
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
                          builder: (context) => Song(),
                          settings: RouteSettings(arguments: AUTOBIOGRAFIA),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
