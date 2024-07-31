import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  int _currentIndex = 0;

  int get currentIndex {
    return _currentIndex;
  }

  updateIndex(int index) {
    _currentIndex = index;
    update();
  }
}
