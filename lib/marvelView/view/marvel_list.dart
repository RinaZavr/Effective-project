import 'package:effective/marvelView/consts/marvel_string_const.dart';
import 'package:effective/marvelView/view/marvel_card_template.dart';
import 'package:flutter/material.dart';

class MarvelList extends StatefulWidget {
  const MarvelList({Key? key}) : super(key: key);

  @override
  State<MarvelList> createState() => _MarvelListState();
}

class _MarvelListState extends State<MarvelList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 600,
        width: 350,
        child: PageView(
          children: const [
            MarvelCardTemplate("img/deadpool.jpg", cardOne),
            MarvelCardTemplate("img/ironman.jpeg", cardTwo),
            MarvelCardTemplate("img/captain.jpg", cardThree),
            MarvelCardTemplate("img/spiderman.jpg", cardFour),
            MarvelCardTemplate("img/doctor.jpeg", cardFive),
            MarvelCardTemplate("img/thor.jpg", cardSix),
            MarvelCardTemplate("img/thanos.jpg", cardSeven),
          ],
        ),
      ),
    );
  }
}
