import 'package:disney_characters_app/src/data/disney.dart';
import 'package:disney_characters_app/src/models/list.dart';
import 'package:disney_characters_app/src/widgets/character_card.dart';
import 'package:flutter/material.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({super.key});

  @override
  State<CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  late CharactersList characterList;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    setState(() {
      isLoading = true;
    });

    try {
      final data = await allCharacters();
      setState(() {
        characterList = data;
      });
    } catch (e) {
      print('Error en la solicitud de red: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
    ? const CircularProgressIndicator()
    : ListView.builder(
      itemCount: characterList.info.count,
      itemBuilder: (context, index) {
        final character = characterList.data[index];
        return Padding (
          padding: const EdgeInsets.all(10),
          child: CharacterCard(character: character)
        );
      },
    );
  }
}
