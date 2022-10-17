import 'package:effective/marvelView/consts/marvel_color_consts.dart';
import 'package:flutter/material.dart';

class MarvelCardDesc extends StatelessWidget {
  final String text;
  final String desc;
  final String url;

  const MarvelCardDesc(this.text, this.desc, this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
          backgroundColor: descCardBg,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: appBarDescBg,
            elevation: 0,
          ),
          body: Hero(
            tag: 'desc-card',
            child: Container(
              width: mediaQuery.size.width,
              height: mediaQuery.size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 40, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: descColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        desc,
                        style: const TextStyle(
                          color: descColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
