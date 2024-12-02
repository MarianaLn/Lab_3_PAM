class Wine {
  final String title;
  final String subtitle;
  final String country;
  final String price;
  final String score;
  final String imageUrl;
  final String wineType;
  final bool isAvailable;
  final bool isFavourite;
  final String countryFlagPath;
  final int quantity;

  Wine({
    required this.title,
    required this.subtitle,
    required this.country,
    required this.price,
    required this.score,
    required this.imageUrl,
    required this.wineType,
    required this.isAvailable,
    required this.isFavourite,
    required this.countryFlagPath,
    required this.quantity,
  });

  factory Wine.fromJson(Map<String, dynamic> json) {
    return Wine(
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      country: json['country'] ?? '',
      price: json['price'] ?? '',
      score: json['score'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      wineType: json['wineType'] ?? '',
      isAvailable: json['isAvailable'] ?? false,
      isFavourite: json['isFavourite'] ?? false,
      countryFlagPath: json['countryFlagPath'] ?? '',
      quantity: json['quantity'] ?? 0,
    );
  }
}
