import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  String _text;
  StatelessWidget _statelessWidget;

  ButtonSection(this._text, this._statelessWidget);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        _text,
        style: TextStyle(
          fontFamily: 'CourierPrime',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      color: Colors.blueAccent,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _statelessWidget),
        );
      },
    );
  }
}
