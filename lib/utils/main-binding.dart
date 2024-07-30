import 'package:fintech/controllers/bottom-nav-bar-controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavBarController(), permanent: true);
  }
}
