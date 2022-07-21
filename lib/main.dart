import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/src/app.dart';
import 'package:instagram_clone/src/binding/init_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      // TODO app은 bottomNavigation을 관리하고, indexed stack을 사용해 인덱스에 맞게끔 변환시켜주는 작업을 해준다.
      // 필요한 controller들을 인스턴스로 올려준다.
      initialBinding: InitBinding(),
      home: const App(),
    );
  }
}
