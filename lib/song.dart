import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'shared/constants.dart';

class Song extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(children: <Widget>[
          Text(BACK),
        ]),
      ),
    );
  }
}
