import 'package:bento_challenge/features/home/models/home_dto.dart';
import 'package:bento_challenge/features/home/repositories/i_home_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  final IHomeRepository _repository;
  HomeController(this._repository);

  final isLoading = ValueNotifier<bool>(false);
  HomeDto? homeInfo;

  void getHomeInfo() async {
    isLoading.value = true;
    homeInfo = await _repository.getHomeInfo();
    isLoading.value = false;
  }
}
