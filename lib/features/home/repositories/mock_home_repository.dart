import 'dart:convert';

import 'package:bento_challenge/features/home/models/home_dto.dart';
import 'package:bento_challenge/features/home/repositories/i_home_repository.dart';
import 'package:flutter/services.dart';

class MockHomeRepository implements IHomeRepository {
  @override
  Future<HomeDto> getHomeInfo() async {
    await Future.delayed(const Duration(seconds: 2));
    final json = jsonDecode(await rootBundle.loadString('assets/mocks/home.json'));
    return HomeDto.fromJson(json);
  }
}
