import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_app/routes/app_routes.dart';
import 'package:hogr_app/screens/home/controller/home_controller.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     Get.back();
        //   },
        // ),
        title: const Text(
          'Page 2',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),

        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          child: const Text("Page 3"),
          onPressed: () {
            Get.toNamed(Routes.page3,
                id: Get.find<HomeController>().index.value == 0 ? 1 : null);
          },
        ),
      ),
    );
  }
}
