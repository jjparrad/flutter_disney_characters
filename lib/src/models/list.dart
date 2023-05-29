import 'package:disney_characters_app/src/models/character.dart';
import 'package:disney_characters_app/src/models/info.dart';

class CharactersList {
  final List<Character> data;
  final ListInfo info;

  CharactersList({
    required this.data,
    required this.info
  });

  factory CharactersList.fromJson(Map<String, dynamic> json) {
    return CharactersList(
      data: List<Character>.from((json['data'] as List).map((model)=> Character.fromJson(model)).toList()),
      info: ListInfo.fromJson(json['info'])
    );
  }
}