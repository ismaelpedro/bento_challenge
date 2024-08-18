import 'package:bento_challenge/features/home/models/home_dto.dart';

abstract class IHomeRepository {
  Future<HomeDto> getHomeInfo();
}
