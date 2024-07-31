import 'package:fintech/controllers/bottom_nav_bar_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavBarController(), permanent: true);
  }
}
