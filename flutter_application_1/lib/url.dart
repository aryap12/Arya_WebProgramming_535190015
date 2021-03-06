import 'package:dio/dio.dart';
import 'package:flutter_application_1/model.dart';

class Url {
  static String urlapi = "https://pokeapi.co/api/v2/";
  // ignore: unnecessary_brace_in_string_interps
  static String extender = "${urlapi}/pokemon";
  Future<List<Model>> model;
}

class Pokepull {
  static Future fetchpokemon(String num) async {
    Dio dio = new Dio();
    // ignore: unnecessary_brace_in_string_interps
    var response = await dio.get(Url.extender + "/${num}",
        options: Options(headers: {"Accept": "application/json"}));

    return response.data;
  }
}
