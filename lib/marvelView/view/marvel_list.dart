import 'package:effective/marvelView/state/marvel_state.dart';
import 'package:effective/marvelView/view/marvel_card_template.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MarvelList extends StatefulWidget {
  const MarvelList({Key? key}) : super(key: key);

  @override
  State<MarvelList> createState() => _MarvelListState();
}

class _MarvelListState extends State<MarvelList> {
  @override
  Widget build(BuildContext context) {
    MarvelState state = Provider.of<MarvelState>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 600,
        width: 350,
        child: PageView.builder(
          itemCount: state.characters.length,
          itemBuilder: (context, index) {
            return MarvelCardTemplate(
              state.getImgPath(index),
              state.getName(index),
              state.getId(index));
          },
        ),
      ),
    );
  }
}
