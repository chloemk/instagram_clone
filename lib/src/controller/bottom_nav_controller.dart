import 'package:get/get.dart';

// Bottom에 있는 페이지 인덱스를 관리하는 클래스
class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    pageIndex(value);
  }
}
