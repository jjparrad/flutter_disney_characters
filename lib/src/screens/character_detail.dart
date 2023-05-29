import 'package:disney_characters_app/src/models/character.dart';
import 'package:disney_characters_app/src/widgets/text_list.dart';
import 'package:flutter/material.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;

  const CharacterDetail({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 30),
              child: Text(
                character.name,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxHeight: 300),
              child: Image.network(
                character.imageUrl,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Text('Este personaje no tiene foto :(');
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextList(elements: character.films, title: 'Películas'),
                TextList(elements: character.shortFilms, title: 'Cortos'),
                TextList(elements: character.allies, title: 'Aliados'),
                TextList(elements: character.enemies, title: 'Enemigos'),
                TextList(elements: character.videoGames, title: 'Videojuegos'),
                TextList(elements: character.parkAttractions, title: 'Atracciones'),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 20),
              child: Text(
                character.sourceUrl,
                style: const TextStyle(
                  fontSize: 12
                ),
              ),
            )
          ],
        )
      )
    );
  }
}
