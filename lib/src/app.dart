import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/image_data.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(),
          body: Container(),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
            elevation: 0,
            onTap: (value) {
              // TODO GetX로 구현할 예정
            },
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
        onWillPop: () async {
          return false;
        });
  }
}
