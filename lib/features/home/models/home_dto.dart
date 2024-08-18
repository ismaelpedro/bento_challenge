import 'package:bento_challenge/features/home/models/category_dto.dart';
import 'package:bento_challenge/features/home/models/top_detal_dto.dart';

class HomeDto {
  final List<TopDealDto> topDeal;
  final List<CategoryDto> categories;

  HomeDto({
    required this.topDeal,
    required this.categories,
  });

  factory HomeDto.fromJson(Map<String, dynamic> json) {
    final categoriesJson = json['categories'] as List;
    List<CategoryDto> categoriesList = categoriesJson.map((c) => CategoryDto.fromJson(c)).toList();

    final topDeal = json['top_deal'] as List;
    List<TopDealDto> topDeals = topDeal.map((c) => TopDealDto.fromJson(c)).toList();

    return HomeDto(
      topDeal: topDeals,
      categories: categoriesList,
    );
  }
}
