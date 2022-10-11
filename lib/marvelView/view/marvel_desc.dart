import 'package:effective/marvelView/consts/marvel_color_consts.dart';
import 'package:effective/marvelView/consts/marvel_string_const.dart';
import 'package:flutter/material.dart';

class MarvelDesc extends StatelessWidget {
  const MarvelDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        mainDesc,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: descColor,
          decoration: TextDecoration.none,
          fontSize: 25,
        ),
      ),
    );
  }
}
