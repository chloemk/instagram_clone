import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/image_data.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(),
          body: Container(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: ImageData('assets/images/add_friend_icon.jpg'),
              ),
            ],
          ),
        ),
        onWillPop: () async {
          return false;
        });
  }
}
