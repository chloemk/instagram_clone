import 'package:flutter/material.dart';
import 'package:instagram_clone/src/components/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        title: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ImageData(
            IconsPath.logo,
            width: 300,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: 40,
                  child: ImageData(
                    IconsPath.directMessage,
                    width: 65,
                  ),
                )),
          ),
        ],
      ),
      body: const Center(
        child: Text('123'),
      ),
    );
  }
}
