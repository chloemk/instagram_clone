import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/components/image_data.dart';
import 'package:instagram_clone/src/controller/bottom_nav_controller.dart';

// BottomNavController에 있는 어떤 nav 컨트롤러가 인스턴스로 등록되어있을 때 접근할 수 있다.
// BottomNavController 인스스로 올라가기 위해서는 GetX에 put 해줘야한다.
class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(),
          // 페이지를 다양하게 처리할 수 있는 위젯
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: <Widget>[
              Container(
                child: Center(child: Text('HOME')),
              ),
              Container(
                child: Center(child: Text('SEARCH')),
              ),
              Container(
                child: Center(child: Text('UPLOAD')),
              ),
              Container(
                child: Center(child: Text('ACTIVITY')),
              ),
              Container(
                child: Center(child: Text('MYPAGE')),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.homeOff),
                activeIcon: ImageData(IconsPath.homeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.searchOff),
                activeIcon: ImageData(IconsPath.searchOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.uploadIcon),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.activeOff),
                activeIcon: ImageData(IconsPath.activeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    )),
                label: 'home',
              ),
            ],
          ),
        ),
      ),
      // 뒤로가기 버튼을 누르면 onWillPop이 실행된다.
      onWillPop: controller.willPopAction,
    );
  }
}
