class TopDealDto {
  final String message;
  final String image;
  final String name;
  final String details;
  final num price;
  final num rating;
  final num oldPrice;
  final bool isSpecial;
  final List<String> tags;

  TopDealDto({
    required this.message,
    required this.image,
    required this.isSpecial,
    required this.name,
    required this.details,
    required this.rating,
    required this.price,
    required this.oldPrice,
    required this.tags,
  });

  factory TopDealDto.fromJson(Map<String, dynamic> json) {
    return TopDealDto(
      message: json['message'],
      details: json['details'],
      rating: json['rating'],
      isSpecial: json['is_special'],
      image: json['image'],
      name: json['name'],
      price: json['price'],
      oldPrice: json['old_price'],
      tags: List<String>.from(json['tags']),
    );
  }
}
