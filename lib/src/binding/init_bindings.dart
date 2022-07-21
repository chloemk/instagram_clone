// 앱이 실행되는 동시에 GetX controller들을 필요에 따라 인스턴스로 올려주기 위한 클래스다.
import 'package:get/get.dart';
import 'package:instagram_clone/src/controller/bottom_nav_controller.dart';

class InitBinding extends Bindings {
  // permanent: true는 앱이 종료되는 시점까지 인스턴스가 살아있게끔 함.
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
  }
}
