import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harmonijka/shared/backTextSection.dart';
import 'package:harmonijka/shared/constants.dart';
import 'package:harmonijka/shared/listTileSongSection.dart';
import 'package:harmonijka/shared/screenTitleSection.dart';

class Songs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BackTextSection(),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                ScreenTitleSection(SONGS + '\n'),
              ],
            ),
          ),
          ListTileSongSection(
            SASIEDZI,
            SASIEDZI_IMG,
            1,
          ),
          ListTileSongSection(
            AUTOBIOGRAFIA,
            PERFECT_IMG,
            2,
          ),
          ListTileSongSection(
            PANIE_JANIE,
            PANIE_JANIE_IMG,
            3,
          ),
          ListTileSongSection(
            TITANIC,
            TITANIC_IMG,
            4,
          ),
        ],
      ),
    );
  }
}
