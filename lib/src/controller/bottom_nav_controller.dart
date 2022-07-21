import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/components/message_popup.dart';
import 'package:instagram_clone/src/pages/upload.dart';

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
  List<int> bottomHistory = [0];

  void changeBottomNav(int value, {bool hasGesture = true}) {
    var page = PageName.values[value];

    switch (page) {
      // 업로드의 경우 페이지 전환이 아니라 팝업레이어 처럼 떠야한다. -> 업로드를 제외한 나머지 페이지에서만 페이지 전환이 일어나야한다.
      case PageName.UPLOAD:
        Get.to(() => const Upload());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value, hasGesture: hasGesture);
        break;
    }
  }

  void _changePage(int value, {bool hasGesture = true}) {
    pageIndex(value);
    if (!hasGesture) return;
    if (bottomHistory.contains(value)) {
      bottomHistory.remove(value);
    }
    bottomHistory.add(value);
    print(bottomHistory);
  }

  Future<bool> willPopAction() async {
    if (bottomHistory.length == 1) {
      showDialog(
          context: Get.context!,
          builder: (context) => MessagePopup(
                title: '시스템',
                message: '종료하시겠습니끼?',
                okCallback: () {
                  exit(0);
                },
              ));
      return true;
    } else {
      bottomHistory.removeLast();
      int index = bottomHistory.last;
      changeBottomNav(index, hasGesture: false);
      print(bottomHistory);
      return false;
    }
  }
}
