class Coffee {
  final String name;
  final String price;
  final String image;
  final String smallDescription;
  final String description;
  final double rating;

  Coffee({
    required this.name,
    required this.price,
    required this.image,
    required this.smallDescription,
    required this.description,
    required this.rating,
  });

  // Named constructor to convert JSON to Coffee object
  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      name: json['name'],
      price: json['price'],
      image: json['image'],
      smallDescription: json['smallDescription'],
      description: json['description'],
      rating: json['rating'].toDouble(),
    );
  }
}
