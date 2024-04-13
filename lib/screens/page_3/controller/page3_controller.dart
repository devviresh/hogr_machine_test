import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:convert' show json;


class PageThreeController extends GetxController {
  RxList<dynamic> dataList = [].obs;
  RxBool cross = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    String jsonString = await rootBundle.loadString('assets/data/page3.json');
    var data = json.decode(jsonString);
    dataList.value = data["page3"];
  }
}
