import 'package:disney_characters_app/src/screens/character_detail.dart';
import 'package:disney_characters_app/src/models/character.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColorLight,
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetail(character: character)
          )
        )
      },
      child: Ink(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).cardColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: [
                Text(character.name),
              ],
            ),
            Image.network(
              character.imageUrl,
              fit: BoxFit.cover,
              width: 100,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Este personaje no tiene foto :(');
              },
            ),
          ],
        ),
      )
    );
  }
}
