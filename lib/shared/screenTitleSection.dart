import 'package:flutter/cupertino.dart';

class ScreenTitleSection extends StatelessWidget {
  String _text;

  ScreenTitleSection(this._text);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: _text,
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'CourierPrime',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
