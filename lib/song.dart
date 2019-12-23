import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'shared/constants.dart';

class Song extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context).settings.arguments;
    String tabs = chooseTabs(name);

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
                    text: name + '\n',
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
                  Text(
                    tabs,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String chooseTabs(String name) {
    switch (name) {
      case SASIEDZI:
        return SASIEDZI_TABS;
      case AUTOBIOGRAFIA:
        return AUTOBIOGRAFIA_TABS;
      default:
        return SOMETHING_WENT_WRONG;
    }
  }
}
