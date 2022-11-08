import 'package:effective/marvelView/state/marvel_state.dart';
import 'package:effective/marvelView/view/marvel_main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MarvelState>(
      create: (context) => MarvelState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MarvelState state = Provider.of<MarvelState>(context);
    state.getCharacters();
    return const MaterialApp(
      home: MarvelMain(),
    );
  }
}
