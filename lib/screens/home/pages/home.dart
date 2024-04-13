import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_app/screens/home/controller/home_controller.dart';
import 'package:hogr_app/screens/page_2/page2.dart';
import 'package:hogr_app/screens/page_3/page3.dart';

import '../../../routes/app_routes.dart';
import '../../page_1/page1.dart';
import 'tab_2.dart';
import 'tab_3.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.index.value,
          children: [
            Navigator(
              key: Get.nestedKey(1),
              initialRoute: Routes.page1,
              onGenerateRoute: (routeSettings) {
                if (routeSettings.name == Routes.page1) {
                  return MaterialPageRoute(builder: (context) {
                    return const PageOne();
                  });
                } else if (routeSettings.name == Routes.page2) {
                  return MaterialPageRoute(builder: (context) {
                    return const PageTwo();
                  });
                } else if (routeSettings.name == Routes.page3) {
                  return MaterialPageRoute(builder: (context) {
                    return const PageThree();
                  });
                }
                return null;
              },
            ),
            const TabTwo(),
            const TabThree(),
          ],
        );
      }),
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: TabBar(
          controller: controller.tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          indicator: const BoxDecoration(color: Colors.black),
          indicatorSize: TabBarIndicatorSize.tab,
          onTap: (value) {
            controller.index.value = value;
          },
          tabs: const [
            Tab(
              text: 'TAB 1',
            ),
            Tab(
              text: 'TAB 2',
            ),
            Tab(
              text: 'TAB 3',
            ),
          ],
        ),
      ),
    );
  }
}
