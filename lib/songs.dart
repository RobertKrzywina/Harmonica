import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harmonijka/shared/backTextSection.dart';
import 'package:harmonijka/shared/buttonSection.dart';
import 'package:harmonijka/shared/screenTitleSection.dart';
import 'package:harmonijka/song.dart';

import 'shared/constants.dart';

class Songs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            ScreenTitleSection(SONGS + '\n'),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ButtonSection(SASIEDZI, Song(), SASIEDZI),
                  ButtonSection(AUTOBIOGRAFIA, Song(), AUTOBIOGRAFIA),
                  ButtonSection(PANIE_JANIE, Song(), PANIE_JANIE),
                  ButtonSection(TITANIC, Song(), TITANIC),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
