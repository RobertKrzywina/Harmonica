import 'package:flutter/material.dart';

import '../song.dart';

class ListTileSongSection extends StatelessWidget {
  String _name;
  String _imagePath;
  int _number;

  ListTileSongSection(this._name, this._imagePath, this._number);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Tab(
          icon: Container(
            child: Image(
              image: AssetImage(
                _imagePath,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          _name,
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text(
          '#$_number',
          style: TextStyle(fontSize: 20),
        ),
        selected: true,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Song(),
              settings: RouteSettings(arguments: _name),
            ),
          );
        },
      ),
    );
  }
}
