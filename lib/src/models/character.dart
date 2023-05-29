class Character {
  final int id;
  final List<String> films;
  final List<String> shortFilms;
  final List<String> tvShows;
  final List<String> videoGames;
  final List<String> parkAttractions;
  final List<String> allies;
  final List<String> enemies;
  final String sourceUrl;
  final String name;
  final String imageUrl;

  Character({
    required this.id,
    required this.films,
    required this.shortFilms,
    required this.tvShows,
    required this.videoGames,
    required this.parkAttractions,
    required this.allies,
    required this.enemies,
    required this.sourceUrl,
    required this.name,
    required this.imageUrl,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['_id'],
      films:  List<String>.from(json['films'] as List),
      shortFilms:  List<String>.from(json['shortFilms'] as List),
      tvShows:  List<String>.from(json['tvShows'] as List),
      videoGames:  List<String>.from(json['videoGames'] as List),
      parkAttractions:  List<String>.from(json['parkAttractions'] as List),
      allies:  List<String>.from(json['allies'] as List),
      enemies:  List<String>.from(json['enemies'] as List),
      sourceUrl: json['sourceUrl'],
      name: json['name'],
      imageUrl: json['imageUrl']
    );
  }
}
