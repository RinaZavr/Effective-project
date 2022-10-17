import 'package:effective/marvelView/view/marvel_card_desc.dart';
import 'package:effective/marvelView/view/marvel_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MarvelMain(),
    );
  }
}
