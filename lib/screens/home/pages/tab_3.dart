import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_app/screens/home/controller/home_controller.dart';

class TabThree extends StatelessWidget {
  const TabThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          child: const Text("TAB 2"),
          onPressed: () {
            /// to tab2
            Get.find<HomeController>().index.value = 1;
            Get.find<HomeController>().tabController.animateTo(1);
          },
        ),
      ),
    );
  }
}
