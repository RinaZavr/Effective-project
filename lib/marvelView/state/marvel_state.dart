import 'package:effective/marvelView/consts/marvel_url_const.dart';
import 'package:effective/services/network_service.dart';
import 'package:flutter/material.dart';

class MarvelState extends ChangeNotifier {
  List characters = [
    {
      'id': 0,
      'name': '',
      'thumbnail': {'path': '', 'extension': ''}
    }
  ];

  Map characterInfo = {
    'id': 0,
    'name': '',
    'desc': '',
    'thumbnail': {'path': '', 'extension': ''}
  };

  void getCharacters() async {
    characters = await NetworkService().getCharacters();
    notifyListeners();
  }

  String getImgPath(int index) {
    return characters[index]['thumbnail']['path'] == ""
        ? mockPath
        : characters[index]['thumbnail']['path'] +
            '.' +
            characters[index]['thumbnail']['extension'];
  }

  String getName(int index) {
    return characters[index]['name'];
  }

  int getId(int index) {
    return characters[index]['id'];
  }

  void getCharacterInfo(int id) async {
    characterInfo = await NetworkService().getCharactersDisc(id);
    notifyListeners();
  }

  String getImgPathId() {
    return characterInfo['thumbnail']['path'] == ""
        ? mockPath
        : characterInfo['thumbnail']['path'] +
            '.' +
            characterInfo['thumbnail']['extension'];
  }

  String getNameId() {
    return characterInfo['name'];
  }

  String getDescId() {
    return characterInfo['desc'] == "" || characterInfo['desc'] == null
      ? "I am " + characterInfo['name']
      : characterInfo['desc'];
  }
}
