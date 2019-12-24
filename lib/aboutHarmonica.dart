import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:harmonijka/shared/backTextSection.dart';
import 'package:harmonijka/shared/screenTitleSection.dart';
import 'package:url_launcher/url_launcher.dart';

import 'shared/constants.dart';

class AboutHarmonica extends StatelessWidget {
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
            ScreenTitleSection(ABOUT_HARMONICA),
            Expanded(
              child: ListView(
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(children: [
                      TextSpan(
                        text: '\n' + MOUTH_HARMONICA,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontFamily: 'CourierPrime',
                        ),
                      ),
                      TextSpan(
                        text: HARMONICA_DEFINITION,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'CourierPrime',
                        ),
                      ),
                    ]),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\n' + SOUND_DISTRIBUTION,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CourierPrime',
                          ),
                        ),
                        TextSpan(
                          text: '\n' + RICHTER,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'CourierPrime',
                          ),
                        ),
                        TextSpan(
                          text: ' C',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CourierPrime',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/images/soundDistribution.png'),
                  Text(
                    '\n' + OCTAVES,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CourierPrime',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset('assets/images/octave.png'),
                  Image.asset('assets/images/harmonicas.png'),
                  InkWell(
                    child: Text(
                      SOURCE + MOUTH_HARMONICA_LINK,
                      style: TextStyle(decoration: TextDecoration.underline),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () async {
                      if (await canLaunch(MOUTH_HARMONICA_LINK)) {
                        await launch(MOUTH_HARMONICA_LINK);
                      }
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
