import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/controller/home_controller.dart';
import 'controller/page3_controller.dart';

class PageThree extends GetView<PageThreeController> {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Page 3',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(
              Get.find<HomeController>().index.value == 1
                  ? Icons.close
                  : Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Obx(() {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 4),
            itemCount: controller.dataList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  color: Colors.teal[100],
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(controller.dataList[index]),
                  ),
                ),
              );
            },
          );
        }));
  }
}

class Page3Controller {}
