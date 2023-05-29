class ListInfo {
  final int count;
  final int? totalPages;
  final String? previousPage;
  final String? nextPage;

  ListInfo({
    required this.count,
    this.totalPages,
    this.previousPage,
    this.nextPage,
  });

  factory ListInfo.fromJson(Map<String, dynamic> json) {
    return ListInfo(
      count: json['count'],
      totalPages: json['totalPages'],
      previousPage: json['previousPage'],
      nextPage: json['nextPage']
    );
  }
}