import 'package:get/get.dart';
import 'package:hogr_app/screens/page_3/controller/page3_controller.dart';

import '../screens/home/controller/home_controller.dart';

///Bindings all the controllers lazily
class InitialBindings extends Bindings {
  @override
  void dependencies() {
    /// Page 1 Controller
    Get.lazyPut(() => HomeController(), fenix: true);

    /// Page 3 Controller
    Get.lazyPut(() => PageThreeController(), fenix: true);
  }
}
