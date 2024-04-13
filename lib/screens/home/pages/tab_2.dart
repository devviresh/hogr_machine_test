import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_app/routes/app_routes.dart';

class TabTwo extends StatelessWidget {
  const TabTwo({super.key});

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
          child: const Text("Page 3"),
          onPressed: () {
            Get.toNamed(Routes.page3);
          },
        ),
      ),
    );
  }
}
