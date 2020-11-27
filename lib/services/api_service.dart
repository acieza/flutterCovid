import 'dart:convert';

import 'package:http/http.dart';
import 'package:fluttercovid/models/lugar.dart';

class ApiService {
  final String apiUrl = "mongodb://localhost:27017/misVotos";

  //************** Convertir datos a Json *********************//
  Future<List<Lugar>> getLugar() async {
    Response res = await get(apiUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Lugar> lugar =
          body.map((dynamic item) => Lugar.fromJson(item)).toList();
      print(body);
      return lugar;
    } else {
      throw "Error en la lista de Lugar";
    }
  }
  //*************************************************************//
}
