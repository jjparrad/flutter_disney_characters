import 'dart:convert';

import 'package:disney_characters_app/src/models/list.dart';
import 'package:http/http.dart' as http;

Future<CharactersList> allCharacters() async {
  final response = await http.get(Uri.parse('https://api.disneyapi.dev/character'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return CharactersList.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load list');
  }
}