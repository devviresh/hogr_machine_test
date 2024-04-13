import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_app/routes/app_routes.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
          'Page 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          child: const Text("Page 2"),
          onPressed: () {
            Get.toNamed(Routes.page2, id: 1);
          },
        ),
      ),
    );
  }
}
