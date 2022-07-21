import 'package:get/get.dart';

enum PageName {
  HOME,
  SEARCH,
  UPLOAD,
  ACTIVITY,
  MYPAGE,
}

// Bottom에 있는 페이지 인덱스를 관리하는 클래스
class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.HOME:
        break;
      case PageName.SEARCH:
        break;
      case PageName.UPLOAD:
        break;
      case PageName.ACTIVITY:
        break;
      case PageName.MYPAGE:
        break;
    }
    pageIndex(value);
  }
}
