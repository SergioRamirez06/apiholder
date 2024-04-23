import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<albumFotos>> Buscalbum() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");

  final response = await http.get(url);

  return compute(pasaraListarusuario, response.body);
}

////////////// Pasar ListarUsuario
List<albumFotos> pasaraListarusuario(String respuestaBody) {
  final pasar = json.decode(respuestaBody).cast<Map<String, dynamic>>();

  return pasar.map<albumFotos>((json) => albumFotos.fromJson(json)).toList();
}
////////////////

class albumFotos {
  final albumId;
  final id;
  final url;
  final title;
  final thumbnailUrl;

  albumFotos({this.albumId, this.id, this.url, this.title, this.thumbnailUrl});

  factory albumFotos.fromJson(Map<String, dynamic> json) {
    return albumFotos(
      albumId: json['albumId'],
      id: json['id'],
      url: json['url'],
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
