import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'shared/constants.dart';

class Song extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context).settings.arguments;
    List<String> content = chooseContent(name);

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
                  for (String element in content)
                    Text(
                      element,
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

  List<String> chooseContent(String name) {
    List<String> content = new List();
    switch (name) {
      case SASIEDZI:
        content.add(SASIEDZI_TABS);
        break;
      case AUTOBIOGRAFIA:
        content.add(AUTOBIOGRAFIA_TABS_1);
        content.add(AUTOBIOGRAFIA_TEXT_1);
        content.add(AUTOBIOGRAFIA_TABS_2);
        content.add(AUTOBIOGRAFIA_TEXT_2);
        content.add(AUTOBIOGRAFIA_TABS_3);
        content.add(AUTOBIOGRAFIA_TEXT_3);
        content.add(AUTOBIOGRAFIA_TABS_4);
        content.add(AUTOBIOGRAFIA_TEXT_4);
        break;
      case PANIE_JANIE:
        content.add(PANIE_JANIE_TABS_1);
        content.add(PANIE_JANIE_TEXT_1);
        content.add(PANIE_JANIE_TABS_2);
        content.add(PANIE_JANIE_TEXT_2);
        content.add(PANIE_JANIE_TABS_3);
        content.add(PANIE_JANIE_TEXT_3);
        content.add(PANIE_JANIE_TABS_4);
        content.add(PANIE_JANIE_TEXT_4);
        content.add(PANIE_JANIE_TABS_5);
        content.add(PANIE_JANIE_TEXT_5);
        content.add(PANIE_JANIE_TABS_6);
        content.add(PANIE_JANIE_TEXT_6);
        content.add(PANIE_JANIE_TABS_7);
        content.add(PANIE_JANIE_TEXT_7);
        content.add(PANIE_JANIE_TABS_8);
        content.add(PANIE_JANIE_TEXT_8);
        break;
      case TITANIC:
        content.add(TITANIC_TABS_1);
        content.add(TITANIC_TEXT_1);
        content.add(TITANIC_TABS_2);
        content.add(TITANIC_TEXT_2);
        content.add(TITANIC_TABS_3);
        content.add(TITANIC_TEXT_3);
        content.add(TITANIC_TABS_4);
        content.add(TITANIC_TEXT_4);
        content.add(TITANIC_TABS_5);
        content.add(TITANIC_TEXT_5);
        content.add(TITANIC_TABS_6);
        content.add(TITANIC_TEXT_6);
        content.add(TITANIC_TABS_7);
        content.add(TITANIC_TEXT_7);
        content.add(TITANIC_TABS_8);
        content.add(TITANIC_TEXT_8);
        content.add(TITANIC_TABS_9);
        content.add(TITANIC_TEXT_9);
        content.add(TITANIC_TABS_10);
        content.add(TITANIC_TEXT_10);
        content.add(TITANIC_TABS_11);
        content.add(TITANIC_TEXT_11);
        content.add(TITANIC_TABS_12);
        content.add(TITANIC_TEXT_12);
        content.add(TITANIC_TABS_13);
        content.add(TITANIC_TEXT_13);
        content.add(TITANIC_TABS_14);
        content.add(TITANIC_TEXT_14);
        content.add(TITANIC_TABS_15);
        content.add(TITANIC_TEXT_15);
        content.add(TITANIC_TABS_16);
        content.add(TITANIC_TEXT_16);
        content.add(TITANIC_TABS_17);
        content.add(TITANIC_TEXT_17);
        content.add(TITANIC_TABS_18);
        content.add(TITANIC_TEXT_18);
        content.add(TITANIC_TABS_19);
        content.add(TITANIC_TEXT_19);
        content.add(TITANIC_TABS_20);
        content.add(TITANIC_TEXT_20);
        content.add(TITANIC_TABS_21);
        content.add(TITANIC_TEXT_21);
        content.add(TITANIC_TABS_22);
        content.add(TITANIC_TEXT_22);
        content.add(TITANIC_TABS_23);
        content.add(TITANIC_TEXT_23);
        content.add(TITANIC_TABS_24);
        content.add(TITANIC_TEXT_24);
        content.add(TITANIC_TABS_25);
        content.add(TITANIC_TEXT_25);
        content.add(TITANIC_TABS_26);
        content.add(TITANIC_TEXT_26);
        content.add(TITANIC_TABS_27);
        content.add(TITANIC_TEXT_27);
        content.add(TITANIC_TABS_28);
        content.add(TITANIC_TEXT_28);
        break;
    }
    return content;
  }
}
