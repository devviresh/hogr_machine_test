import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxInt index = 0.obs;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }
}
