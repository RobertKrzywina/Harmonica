import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:harmonijka/shared/backTextSection.dart';
import 'package:harmonijka/shared/screenTitleSection.dart';

import 'shared/constants.dart';

class Song extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _name = ModalRoute.of(context).settings.arguments;
    String _content = _chooseContent(_name);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            BackTextSection(),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            ScreenTitleSection(_name + '\n'),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Text(
                    _content,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'CourierPrime',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String _chooseContent(String name) {
    switch (name) {
      case SASIEDZI:
        return SASIEDZI_CONTENT;
      case AUTOBIOGRAFIA:
        return AUTOBIOGRAFIA_CONTENT;
      case PANIE_JANIE:
        return PANIE_JANIE_CONTENT;
      case TITANIC:
        return TITANIC_CONTENT;
    }
    return SOMETHING_WENT_WRONG;
  }
}
