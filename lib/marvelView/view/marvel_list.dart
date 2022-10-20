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
  MediaQueryData mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: mediaQuery.size.height * 0.06, horizontal: mediaQuery.size.width * 0.06),
      child: SizedBox(
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
