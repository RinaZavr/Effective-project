import 'package:flutter/material.dart';

class MarvelLogo extends StatelessWidget {
  const MarvelLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Image.asset("img/marvel.png", height: 50,),
    );
  }
}
