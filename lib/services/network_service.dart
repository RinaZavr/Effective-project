import 'package:dio/dio.dart';

class NetworkService {
  final String _address = "https://gateway.marvel.com";
  final int _ts = 1;
  final String _publicKey = "d9f912e4d4e86b8f955e0185655127ed";
  final String hash = "8cee7a4bba51af81d4f07c0e261d4ee5";

  Future<List<dynamic>> getCharacters() async {
    String url =
        "$_address/v1/public/characters?ts=$_ts&apikey=$_publicKey&hash=$hash";
    try {
      Dio dio = Dio();
      var resp = await dio.get(url);
      print(resp.statusCode);
      return resp.data["data"]["results"];
    } catch (e) {
      return [];
    }
  }

  Future<Map> getCharactersDisc(int id) async {
    String url =
        "$_address/v1/public/characters/$id?ts=$_ts&apikey=$_publicKey&hash=$hash";
    try {
      Dio dio = Dio();
      var resp = await dio.get(url);
      return resp.data["data"]["results"][0];
    } catch (e) {
      return {};
    }
  }
}
