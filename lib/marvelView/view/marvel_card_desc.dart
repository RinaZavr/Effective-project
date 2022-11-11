import 'package:effective/marvelView/consts/marvel_color_consts.dart';
import 'package:effective/marvelView/state/marvel_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MarvelCardDesc extends StatelessWidget {
  const MarvelCardDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    MarvelState state = Provider.of<MarvelState>(context);

    return Scaffold(
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(state.getImgPathId()),
                fit: BoxFit.cover),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 40, bottom: 40, right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.getNameId(),
                    style: const TextStyle(
                      color: descColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      state.getDescId(),
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
        ));
  }
}
