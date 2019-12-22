import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutHarmonica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(children: <Widget>[
          Text('Powrót'),
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
                      text: 'O harmonijce', style: TextStyle(fontSize: 35)),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(children: [
                TextSpan(
                  text: '\nHarmonijka ustna',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: ' - instrument muzyczny z grupy aerofonów. '
                      'Dźwięk wydobywa się podczas ruchu powietrz'
                      'a w szczelinach, przy których znajdują się'
                      ' metalowe blaszki zwane stroikami (pot. ję'
                      'zyczkami), które wprawione w drgania wydaj'
                      'ą dźwięki zależne od ich długości.',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ]),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '\nRozkład dźwięków na harmonijce diatonicznej',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '\nstrój Richtera, w tonacji ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'C',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            Image.asset('assets/images/soundDistribution.png'),
            Text(
              '\nOznaczenia oktaw na diagramie:',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/octave.png'),
            Image.asset('assets/images/harmonicas.png'),
            InkWell(
              child: Text(
                "Źródło: https://pl.wikipedia.org/wiki/Harmonijka_ustna",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              onTap: () async {
                if (await canLaunch(
                    "https://pl.wikipedia.org/wiki/Harmonijka_ustna")) {
                  await launch(
                      "https://pl.wikipedia.org/wiki/Harmonijka_ustna");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
