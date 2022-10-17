import 'package:effective/marvelView/consts/marvel_color_consts.dart';
import 'package:effective/marvelView/view/marvel_card_desc.dart';
import 'package:flutter/material.dart';

class MarvelCardTemplate extends StatelessWidget {
  final String text;
  final String desc;
  final String url;
  const MarvelCardTemplate(this.url, this.text, this.desc, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        clipBehavior: Clip.hardEdge,
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MarvelCardDesc(text, desc, url))),
          child: Hero(
            tag: "card",
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
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
          ),
        ),
      ),
    );
  }
}
