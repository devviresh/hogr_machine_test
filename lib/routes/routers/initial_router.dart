import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hogr_app/screens/page_1/page1.dart';
import 'package:hogr_app/screens/page_3/page3.dart';
import '../../screens/home/pages/home.dart';
import '../../screens/page_2/page2.dart';
import '../app_routes.dart';

class AppPages {
  /// App Route Pages
  static final List<GetPage> routes = [
    /// Page 1
    GetPage(
      name: Routes.home,
      page: () => const Home(),
    ),

    /// Page 1
    GetPage(
      name: Routes.page1,
      page: () => const PageOne(),
    ),

    /// Page 2
    GetPage(
      name: Routes.page2,
      page: () => const PageTwo(),
    ),

    /// Page 3
    GetPage(
      name: Routes.page3,
      page: () => const PageThree(),
    ),
  ];
}
