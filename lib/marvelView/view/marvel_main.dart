import 'package:effective/marvelView/view/marvel_desc.dart';
import 'package:effective/marvelView/view/marvel_list.dart';
import 'package:effective/marvelView/view/marvel_logo.dart';
import 'package:flutter/material.dart';

class MarvelMain extends StatelessWidget {
  const MarvelMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          MarvelLogo(),
          MarvelDesc(),
          Expanded(child: MarvelList()),
        ],
      ),
    );
  }
}
