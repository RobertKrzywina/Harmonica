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
          Text(BACK),
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
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  RaisedButton(
                    child: Text(SASIEDZI),
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
                    child: Text(AUTOBIOGRAFIA),
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
