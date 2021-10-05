class Space {
  int id;
  String name;
  String imageUrl;
  double price;
  String city;
  String country;
  int rating;

  Space({
    required this.city,
    required this.country,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
  });
}
