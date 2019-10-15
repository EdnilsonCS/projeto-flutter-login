import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';

class Autenticacao {
  Autenticacao(this.login, this.senha);
  Dio dio = new Dio();
  final String login;
  final String senha;
  String code ;
  final tokenEndpoint =
      "https://apisistemas.desenvolvimento.ufs.br/api/rest/token";

  final optionsDefault = RequestOptions(
      headers: {'Content-Type': 'application/x-www-form-urlencoded'});

  FormData getFromDataAccessTokenPost(login, senha) => FormData.from({
        "client_id": "696a8721813f19e86fc272afb4761a18",
        "client_secret": "c8729006256b7218dcdf549b87a7e51e",
        "grant_type": "password",
        "username": login,
        "password": md5.convert(utf8.encode(senha)).toString()
      });

  getStatus() async {
    Response response = await dio.post(tokenEndpoint,
        queryParameters: getFromDataAccessTokenPost(login, senha),
        options: optionsDefault);
    return response.statusCode;
  }
}
