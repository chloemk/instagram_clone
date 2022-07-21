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
      // 업로드의 경우 페이지 전환이 아니라 팝업레이어 처럼 떠야한다. -> 업로드를 제외한 나머지 페이지에서만 페이지 전환이 일어나야한다.
      case PageName.UPLOAD:
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value);
        break;
    }
  }

  void _changePage(int value) {
    pageIndex(value);
  }
}
