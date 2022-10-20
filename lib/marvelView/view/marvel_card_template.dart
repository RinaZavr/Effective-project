import 'package:effective/marvelView/consts/marvel_color_consts.dart';
import 'package:flutter/material.dart';

class MarvelCardTemplate extends StatelessWidget {
  final String img;
  final String text;
  const MarvelCardTemplate(this.img, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      clipBehavior: Clip.hardEdge,
      child: Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, bottom: 40),
          child: Text(
            text,
            style: const TextStyle(
              color: descColor,
              fontSize: 30,
              fontWeight: FontWeight.w700, 
            ),
          ),
        ),
      ),
    );
  }
}
