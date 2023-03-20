import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/comics_response.dart';

class ComicsProvider extends ChangeNotifier {
  var _baseUrl = Uri.parse(
      'https://gateway.marvel.com:443/v1/public/characters?ts=1&apikey=977f599101180f0e5c4c4b50611e184f&hash=935fc06383d0a9d392656fad138d5434');

  ComicsProvider() {
    print('comics provider inicializado');
    this.getDisplayComics();
  }

  static void getDisplayComics() async {
    final response = await http.get(_baseUrl);

    if (response.statusCode == 200) {
      final nowComicsResponde =
          NowComicsResponde.fromJson(jsonDecode(response.body));
      print(nowComicsResponde.code);
      return nowComicsResponde;
    } else {
      throw Exception('Failed to load album');
    }
    print(nowComicsResponde);
  }

  // Future<NowComicsResponde> getDisplayComics() async {
  //   final response = await http.get(_baseUrl);
  //
  //   if (response.statusCode == 200) {
  //     final nowComicsResponde =
  //         NowComicsResponde.fromJson(jsonDecode(response.body));
  //     print(nowComicsResponde.code);
  //     return nowComicsResponde;
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }
}
